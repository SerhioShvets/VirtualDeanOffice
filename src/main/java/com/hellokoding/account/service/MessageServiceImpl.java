package com.hellokoding.account.service;

import com.hellokoding.account.model.Message;
import com.hellokoding.account.repository.MessageRepository;
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
        SimpleDateFormat dateFormat = new SimpleDateFormat("EEEEE yyyy/MM/dd HH:mm");
        Date date = new Date();
        message.setPublicationDate(dateFormat.format(date));
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
