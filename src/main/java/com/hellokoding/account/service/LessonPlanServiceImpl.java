package com.hellokoding.account.service;

import com.hellokoding.account.model.Lesson;
import com.hellokoding.account.repository.LessonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@Service
public class LessonPlanServiceImpl implements LessonPlanService {

    @Autowired
    private LessonRepository lessonRepository;

    @Autowired
    private DateServiceImpl dateService;

    @Override
    public List<Lesson> getAllBy() {
        List<Lesson> lessonList = lessonRepository.getAllBy();
        return lessonList;
    }

    @Override
    public List<Lesson> getListLessonForPeriod(Date dateNow, Date inOneWeek) {
        List<Lesson> listAllByDateLesson = new ArrayList<>();
        Date dateToIncrement = dateNow;
        while (inOneWeek.compareTo(dateToIncrement) != 0) {
            if ((lessonRepository.getLessonByDateLesson(dateToIncrement) != null)) {
                listAllByDateLesson.add(lessonRepository.getLessonByDateLesson(dateToIncrement));
            }
            dateToIncrement = dateService.getNextDay(dateToIncrement);
        }
        return listAllByDateLesson;
    }

    @Override
    public Lesson getLessonByDateLesson(Date dateNow) {
        return lessonRepository.getLessonByDateLesson(dateNow);
    }

}
