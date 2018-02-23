package com.hellokoding.account.service;

import com.hellokoding.account.model.Estimate;
import com.hellokoding.account.repository.EstimateRepository;
import org.hibernate.sql.Update;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;
import java.util.HashMap;
import java.util.Map;

@Service
public class EstimateServiceImpl implements EstimateService {

    @PersistenceContext
    private EntityManager entityManager;

    @Autowired
    private EstimateRepository estimateRepository;

    @Override
    public Map getMapIdEstimate(Long idStudent, int sizeLessonList) {
        Map<Long, String> estimateMap = new HashMap<>();
        Estimate model;
        String estimate;
        for (Long lessonId = 1L; lessonId <= sizeLessonList; lessonId++) {
            model = estimateRepository.getEstimateByIdStudentAndIdLesson(idStudent, lessonId);
            if (model != null) {
                estimate = model.getEstimate();
                estimateMap.put(lessonId, estimate);
            } else {
                estimateMap.put(lessonId, "-"); //  "-" - oceny jeszcze nie ma.
            }
        }
        return estimateMap;
    }

    @Override
    @Transactional
    public void save(Long idStudent, Long idLesson, String estimate) {
        if (estimateRepository.getEstimateByIdStudentAndIdLesson(idStudent, idLesson) == null) {
            Estimate newEstimate = new Estimate();
            newEstimate.setIdStudent(idStudent);
            newEstimate.setIdLesson(idLesson);
            newEstimate.setEstimate(estimate);
            estimateRepository.save(newEstimate);
        } else {
            Query query = entityManager.createNativeQuery(
                    "UPDATE Estimate e SET e.estimate = '"+ estimate +"'"+ "WHERE idStudent =" + idStudent + " and idLesson =" + idLesson);
            query.executeUpdate();
        }
    }

}
