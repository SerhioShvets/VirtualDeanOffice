package com.deans.office.web;

import com.deans.office.model.Message;
import com.deans.office.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class MessageController {

    @Autowired
    private MessageService messageService;


    @RequestMapping(value = "/sendMail", method = RequestMethod.GET)
    public String message(Model model) {
        model.addAttribute("sendMessage", new Message());
        return "sendMail";
    }


    @RequestMapping(value = "/sendMail", method = RequestMethod.POST)
    public String message(@ModelAttribute("sendMessage") Message message) {
        messageService.save(message);
        return "successSend";
    }

    @RequestMapping(value = "/unreadMail", method = RequestMethod.POST)
    public String addMessage() {
        return "unreadMail";
    }

    @RequestMapping(value = "/unreadMail", method = RequestMethod.GET)
    public String addMessage(@ModelAttribute("Message") Message message, Model model) {
        model.addAttribute("messageList", messageService.findAllBy());
        return "unreadMail";
    }

    @RequestMapping(value = "/unreadMail/{id}", method = RequestMethod.GET)
    public String getTextMessage(@PathVariable("id") Long id, Model model){
        model.addAttribute("message", messageService.getById(id));
        return "chosenMessage";
    }
}

