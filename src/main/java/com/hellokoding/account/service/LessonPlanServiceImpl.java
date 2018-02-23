package com.hellokoding.account.service;

import com.hellokoding.account.model.LessonPlan;
import com.hellokoding.account.repository.LessonPlanRepository;
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
    private LessonPlanRepository lessonPlanRepository;

    @Override
    public List<LessonPlan> getAllBy() {
        List<LessonPlan> lessonPlanList = lessonPlanRepository.getAllBy();
        return lessonPlanList;
    }

    @Override
    public List getListLessonForPeriod(Date dateNow, Date desiredDay) {
        String query = "FROM LessonPlan WHERE dateLesson BETWEEN " + "'" + dateNow + "' " + "AND " + "'" + desiredDay + "'";
        return entityManager.createQuery(query)
                .getResultList();
    }

    @Override
    public LessonPlan getLessonByDateLesson(Date dateNow) {
        return lessonPlanRepository.getLessonByDateLesson(dateNow);
    }
}
