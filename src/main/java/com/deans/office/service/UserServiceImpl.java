package com.deans.office.service;

import com.deans.office.repository.RoleRepository;
import com.deans.office.repository.UserRepository;
import com.deans.office.model.Role;
import com.deans.office.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public void save(User user) {
        Set<Role> roles = new HashSet<>();
        roles.add(roleRepository.findOne((1L)));
        user.setRoles(roles);
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        userRepository.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public List<User> getAllBy() {
        List<User> studentsList = new ArrayList<>();
        studentsList.addAll(userRepository.getAllBy());
        return studentsList;
    }
}
