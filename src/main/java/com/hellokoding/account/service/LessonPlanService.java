package com.hellokoding.account.service;

import com.hellokoding.account.model.Lesson;

import java.sql.Date;
import java.util.List;

public interface LessonPlanService {
    List<Lesson> getAllBy();
    List getListLessonForPeriod(Date dateNow, Date inOneWeek);
    Lesson getLessonByDateLesson(Date dateNow);


}
