package com.deans.office.repository;

import com.deans.office.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
    List<User> getAllBy();
    User getById(Long idUser);
}
