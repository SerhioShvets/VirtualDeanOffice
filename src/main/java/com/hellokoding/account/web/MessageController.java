package com.hellokoding.account.web;

import com.hellokoding.account.model.Message;
import com.hellokoding.account.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;


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

