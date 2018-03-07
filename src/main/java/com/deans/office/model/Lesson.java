package com.deans.office.model;

import javax.persistence.*;

@Entity
@Table(name = "Lesson")
public class Lesson {
    private Long id;
    private String lessonName;
    private String teacherName;
    private String estimateForm; //zaliczenie lub ocena
    private int ectsPoint;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getEstimateForm() {
        return estimateForm;
    }

    public void setEstimateForm(String estimateForm) {
        this.estimateForm = estimateForm;
    }

    public int getEctsPoint() {
        return ectsPoint;
    }

    public void setEctsPoint(int ectsPoint) {
        this.ectsPoint = ectsPoint;
    }
}
