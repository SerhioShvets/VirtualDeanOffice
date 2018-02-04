package com.hellokoding.account.service;

import com.hellokoding.account.model.Lesson;
import com.hellokoding.account.repository.LessonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.sql.Date;
import java.util.List;

@Service
public class LessonPlanServiceImpl implements LessonPlanService {

    @PersistenceContext
    private EntityManager entityManager;

    @Autowired
    private LessonRepository lessonRepository;

    @Override
    public List<Lesson> getAllBy() {
        List<Lesson> lessonList = lessonRepository.getAllBy();
        return lessonList;
    }

    @Override
    public List getListLessonForPeriod(Date dateNow, Date desiredDay) {
        String query = "FROM Lesson WHERE dateLesson BETWEEN " + "'" + dateNow + "' " + "AND " + "'" + desiredDay + "'";
        return entityManager.createQuery(query)
                .getResultList();
    }

    @Override
    public Lesson getLessonByDateLesson(Date dateNow) {
        return lessonRepository.getLessonByDateLesson(dateNow);
    }
}
