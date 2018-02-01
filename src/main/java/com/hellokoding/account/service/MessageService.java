package com.hellokoding.account.service;

import com.hellokoding.account.model.Message;

import java.util.List;

public interface MessageService {
    void save (Message message);
    Message getById(Long id);
    List<Message> findAllBy();
}
