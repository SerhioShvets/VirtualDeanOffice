package com.hellokoding.account.repository;

import com.hellokoding.account.model.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LessonRepository extends JpaRepository<Lesson, Long> {
    List<Lesson> getAllBy();
    /*Lesson getById();*/
}
