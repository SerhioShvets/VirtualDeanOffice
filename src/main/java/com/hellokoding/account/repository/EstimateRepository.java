package com.hellokoding.account.repository;

import com.hellokoding.account.model.Estimate;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EstimateRepository extends JpaRepository<Estimate, Long>{
    Estimate getEstimateByIdStudentAndIdLesson (Long idStudent, Long idLesson);
}
