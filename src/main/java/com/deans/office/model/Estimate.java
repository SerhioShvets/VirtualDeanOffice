package com.deans.office.model;


import javax.persistence.*;

@Entity
@Table(name = "Estimate")
public class Estimate {
    private Long id;
    private Long idStudent;
    private Long idLesson;
    private String estimate;


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getIdStudent() {
        return idStudent;
    }

    public void setIdStudent(Long idStudent) {
        this.idStudent = idStudent;
    }

    public Long getIdLesson() {
        return idLesson;
    }

    public void setIdLesson(Long idLesson) {
        this.idLesson = idLesson;
    }

    public String getEstimate() {
        return estimate;
    }

    public void setEstimate(String estimate) {
        this.estimate = estimate;
    }

    @Override
    public String toString() {
        return "Estimate{" +
                "id=" + id +
                ", idStudent=" + idStudent +
                ", idLesson=" + idLesson +
                ", estimate='" + estimate + '\'' +
                '}';
    }
}

