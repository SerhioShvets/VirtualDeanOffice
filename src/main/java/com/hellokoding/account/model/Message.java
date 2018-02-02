package com.hellokoding.account.model;

import javax.persistence.*;

@Entity
@Table(name = "user_mail")
public class Message {
    private Long id;
    private String sendMessage;
    private String title;
    private String publicationDate;


    public String getSendMessage() {
        return sendMessage;
    }

    public void setSendMessage(String sendMessage) {
        this.sendMessage = sendMessage;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPublicationDate() {
        return publicationDate;
    }

    public void setPublicationDate(String publicationDate) {
        this.publicationDate = publicationDate;
    }

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", sendMessage='" + sendMessage + '\'' +
                ", title='" + title + '\'' +
                ", publicationDate='" + publicationDate + '\'' +
                '}';
    }
}
