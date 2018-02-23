package com.hellokoding.account.model;

import java.util.Arrays;
import java.util.List;

public class EstimateVariable {
    private List<String> estimates = Arrays.asList("-", "5", "4", "3", "2", "zal");
    private String estimate;
    private Long idLesson;

    public List<String> getEstimates() {
        return estimates;
    }

    public String getEstimate() {
        return estimate;
    }

    public void setEstimate(String estimate) {
        this.estimate = estimate;
    }

    public Long getIdLesson() {
        return idLesson;
    }

    public void setIdLesson(Long idLesson) {
        this.idLesson = idLesson;
    }
}


