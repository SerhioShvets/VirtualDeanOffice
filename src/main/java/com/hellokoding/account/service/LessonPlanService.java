package com.hellokoding.account.service;

import com.hellokoding.account.model.LessonPlan;

import java.sql.Date;
import java.util.List;

public interface LessonPlanService {
    List<LessonPlan> getAllBy();
    List getListLessonForPeriod(Date dateNow, Date inOneWeek);
    LessonPlan getLessonByDateLesson(Date dateNow);


}
