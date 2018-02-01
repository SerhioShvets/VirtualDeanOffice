package com.hellokoding.account.repository;

import com.hellokoding.account.model.Message;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MessageRepository extends JpaRepository<Message, Long> {
    Message getById(Long id);

    List<Message> findAllBy();
}
