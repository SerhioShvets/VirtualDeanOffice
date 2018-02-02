package com.hellokoding.account.service;

import com.hellokoding.account.model.Lesson;
import com.hellokoding.account.repository.LessonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LessonPlanServiceImpl implements LessonPlanService {

    @Autowired
    private LessonRepository lessonRepository;

    @Override
    public List<Lesson> getAllBy() {
        List<Lesson> lessonList = new ArrayList<>();
        lessonList = lessonRepository.getAllBy();
        return lessonList;
    }
}
