package com.deans.office.service;

import java.util.Map;

public interface EstimateService {
    Map getMapIdEstimate(Long idStudent, int sizeLessonList);
    void save(Long idStudent, Long idLesson, String estimate);
}
