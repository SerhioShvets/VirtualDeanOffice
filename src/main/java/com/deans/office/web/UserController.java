package com.deans.office.web;

import com.deans.office.model.User;
import com.deans.office.service.UserService;
import com.deans.office.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }
        userService.save(userForm);
        return "redirect:/registrationSuccess";
    }

    @RequestMapping(value = "/registrationSuccess", method = RequestMethod.GET)
    public String registrationSuccess(){
        return "registrationSuccess";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");
        return "login";
    }

    @RequestMapping(value = {"/", "/welcome"}, method = RequestMethod.GET)
    public String welcome() {
        return "welcome";
    }

    @RequestMapping(value = "/userInfo/{userName}", method = RequestMethod.GET)
    public String getUserInformation(@PathVariable("userName") String userName, Model model) {
        model.addAttribute("user", userService.findByUsername(userName));
        return "userInfo";
    }

    @RequestMapping(value = "allStudents", method = RequestMethod.GET)
    public String getAllStudents(Model model) {
        model.addAttribute("allStudentsList", userService.getAllBy());
        return "allStudents";
    }
}
