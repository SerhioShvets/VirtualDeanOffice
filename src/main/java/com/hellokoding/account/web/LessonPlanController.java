package com.hellokoding.account.web;

import com.hellokoding.account.model.Lesson;
import com.hellokoding.account.service.DateServiceImpl;
import com.hellokoding.account.service.LessonPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LessonPlanController {

    @Autowired
    private LessonPlanService planService;

    @Autowired
    private DateServiceImpl dateService;


    @RequestMapping(value = "/lessonPlan", method = RequestMethod.GET)
    public String getAllLessonPlan(@ModelAttribute("Lesson") Lesson lesson, Model model) {
        model.addAttribute("lessonList", planService.getAllBy());
        model.addAttribute("listAllByDateLesson", planService.getListLessonForPeriod(dateService.getCurrentDate(),
                                dateService.getRequestedDate(dateService.getCurrentDate())));
        return "lessonPlan";
    }
}
