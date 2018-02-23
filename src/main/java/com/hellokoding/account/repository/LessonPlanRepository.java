package com.hellokoding.account.repository;

import com.hellokoding.account.model.LessonPlan;
import org.springframework.data.jpa.repository.JpaRepository;

import java.sql.Date;
import java.util.List;

public interface LessonPlanRepository extends JpaRepository<LessonPlan, Long> {
    List<LessonPlan> getAllBy();
    LessonPlan getLessonByDateLesson(Date dateNow);
}
