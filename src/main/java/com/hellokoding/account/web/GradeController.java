package com.hellokoding.account.web;

import com.hellokoding.account.model.EstimateVariable;
import com.hellokoding.account.repository.UserRepository;
import com.hellokoding.account.service.EstimateService;
import com.hellokoding.account.service.LessonService;
import com.hellokoding.account.service.SomeoneService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class GradeController {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private LessonService lessonService;

    @Autowired
    private EstimateService estimateService;

    @RequestMapping(value = "/grade", method = RequestMethod.GET)
    public String getEstimates(Model model) {
        Long userID = SomeoneService.getInstance().getUserId();
        model.addAttribute("lessonList", lessonService.getAllBy());
        model.addAttribute("estimate", estimateService.getMapIdEstimate(userID, lessonService.getAllBy().size()));
        return "grades";
    }

    @RequestMapping(value = "/chosenStudent/{id}", method = RequestMethod.GET)
    public String getEstimateChosenStudents(@PathVariable("id") Long id, Model model) {
        model.addAttribute("student", userRepository.getById(id));
        model.addAttribute("lessonList", lessonService.getAllBy());
        model.addAttribute("estimate", estimateService.getMapIdEstimate(id, lessonService.getAllBy().size()));
        model.addAttribute("studentEstimate", new EstimateVariable());
        return "chosenStudent";
    }

    @RequestMapping(value = "/chosenStudent/{id}", method = RequestMethod.POST)
    public String setEstimate(@PathVariable("id") Long idStudent, @ModelAttribute("studentEstimate") EstimateVariable variable) {
        estimateService.save(idStudent, variable.getIdLesson(), variable.getEstimate());
        return "redirect: /chosenStudent/" + idStudent;
    }
}
