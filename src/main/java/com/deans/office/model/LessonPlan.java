package com.deans.office.model;


import javax.persistence.*;
import java.sql.Date;
import java.text.SimpleDateFormat;

@Entity
@Table(name = "LessonPlan")
public class LessonPlan {

    private Long id;
    private Date dateLesson;
    private String getDayOnDate;
    private String beginLesson;
    private String endLesson;
    private String lessonName;
    private String teacher;
    private String classRoom;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getDateLesson() {
        return dateLesson;
    }

    public void setDateLesson(Date dateLesson) {
        getDayOnDate = new SimpleDateFormat("EEEEE yyyy-MM-dd").format(dateLesson);
        this.dateLesson = dateLesson;
    }

    @Transient
    public String getGetDayOnDate() {
        return getDayOnDate;
    }

    public void setGetDayOnDate(String getDayOnDate) {
        this.getDayOnDate = getDayOnDate;
    }

    public String getBeginLesson() {
        return beginLesson;
    }

    public void setBeginLesson(String beginLesson) {
        this.beginLesson = beginLesson;
    }

    public void setEndLesson(String endLesson) {
        this.endLesson = endLesson;
    }

    public String getEndLesson() {
        return endLesson;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getClassRoom() {
        return classRoom;
    }

    public void setClassRoom(String classRoom) {
        this.classRoom = classRoom;
    }


    @Override
    public String toString() {
        return "LessonPlan{" +
                "id=" + id +
                ", dateLesson=" + dateLesson +
                ", getDayOnDate='" + getDayOnDate + '\'' +
                ", beginLesson='" + beginLesson + '\'' +
                ", endLesson='" + endLesson + '\'' +
                ", lessonName='" + lessonName + '\'' +
                ", teacher='" + teacher + '\'' +
                ", classRoom='" + classRoom + '\'' +
                '}';
    }
}