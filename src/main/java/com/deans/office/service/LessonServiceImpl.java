package com.deans.office.service;

import com.deans.office.repository.LessonRepository;
import com.deans.office.model.Lesson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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
