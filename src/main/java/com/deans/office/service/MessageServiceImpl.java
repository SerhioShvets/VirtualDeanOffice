package com.deans.office.service;

import com.deans.office.repository.MessageRepository;
import com.deans.office.model.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.*;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public void save(Message message) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("EEEEE yyyy-MM-dd HH:mm");
        Date date = new Date();
        message.setPublicationDate(dateFormat.format(date));

        if ((message.getSendMessage()).length() > 60){
        message.setSubMessage(message.getSendMessage().substring(0, 60) + "...");
        }else {
            message.setSubMessage(message.getSendMessage());
        }
        messageRepository.save(message);
    }

    @Override
    public Message getById(Long id) {
        return messageRepository.getById(id);
    }

    @Override
    public List<Message> findAllBy() {
        List<Message> messageList = new ArrayList<>();
        messageList.addAll(messageRepository.findAllBy());
        Collections.reverse(messageList);
        return messageList;
    }


}
