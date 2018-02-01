package com.hellokoding.account.service;

import com.hellokoding.account.model.Message;
import com.hellokoding.account.repository.MessageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Override
    public void save(Message message) {
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

        for (Message message: messageList) {
            System.out.println(message.toString());
        }
        return messageList;
    }


}
