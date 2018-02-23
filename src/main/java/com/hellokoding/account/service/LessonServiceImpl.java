package com.hellokoding.account.service;

import com.hellokoding.account.model.Lesson;
import com.hellokoding.account.repository.LessonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class LessonServiceImpl implements LessonService {

    @Autowired
    private LessonRepository lessonRepository;

    @Override
    public List<Lesson> getAllBy() {
        ArrayList<Lesson> lessonsList = new ArrayList<>();
        lessonsList.addAll(lessonRepository.getAllBy());
        return lessonsList;
    }
}
