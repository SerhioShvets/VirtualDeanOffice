package com.deans.office.service;

import com.deans.office.model.Message;

import java.util.List;

public interface MessageService {
    void save (Message message);
    Message getById(Long id);
    List<Message> findAllBy();
}
