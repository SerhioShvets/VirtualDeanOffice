package com.deans.office.web;

import com.deans.office.service.DateServiceImpl;
import com.deans.office.service.LessonPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LessonPlanController {

    @Autowired
    private LessonPlanService planService;

    @Autowired
    private DateServiceImpl dateService;


    @RequestMapping(value = "/lessonPlan/{period}", method = RequestMethod.GET)
    public String getAllLessonPlan(@PathVariable("period") int period, Model model) {
        model.addAttribute("lessonList", planService.getAllBy());
        model.addAttribute("listAllByDateLesson", planService.getListLessonForPeriod(dateService.getCurrentDate(),
                                dateService.getRequestedDate(dateService.getCurrentDate(), period)));
        return "lessonPlan";
    }

    @RequestMapping(value = "/lessonPlan", method = RequestMethod.GET)
    public String getAllLessonPlan(Model model) {
        model.addAttribute("listAllByDateLesson", planService.getAllBy());
        return "lessonPlan";
    }
}
