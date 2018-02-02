package com.hellokoding.account.service;

import com.hellokoding.account.model.Message;
import com.hellokoding.account.model.User;

import java.util.List;

public interface MessageService {
    void save (Message message);
    Message getById(Long id);
    List<Message> findAllBy();
}
