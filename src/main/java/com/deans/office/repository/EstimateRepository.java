package com.deans.office.repository;

import com.deans.office.model.Estimate;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EstimateRepository extends JpaRepository<Estimate, Long>{
    Estimate getEstimateByIdStudentAndIdLesson (Long idStudent, Long idLesson);
}
