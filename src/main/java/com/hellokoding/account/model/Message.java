package com.hellokoding.account.model;

import javax.persistence.*;

@Entity
@Table(name = "user_mail")
public class Message {
    private Long id;
    private String author;
    private String sendMessage;


    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }


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

    @Override
    public String toString() {
        return "Message{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", sendMessage='" + sendMessage + '\'' +
                '}';
    }
}
