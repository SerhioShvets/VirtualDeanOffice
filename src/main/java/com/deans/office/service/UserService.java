package com.deans.office.service;

import com.deans.office.model.User;

import java.util.List;

public interface UserService {
    void save(User user);
    User findByUsername(String username);
    List<User> getAllBy();
}
