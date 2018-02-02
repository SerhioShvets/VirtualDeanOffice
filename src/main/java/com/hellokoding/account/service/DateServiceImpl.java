package com.hellokoding.account.service;

import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.Calendar;

@Service
public class DateServiceImpl {

    private Date currentDate = new Date(Calendar.getInstance().getTime().getTime());

    public Date getNextDay(Date currentDate) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(currentDate);
        calendar.add(Calendar.DAY_OF_WEEK, 1);
        Date nextDay = new Date(calendar.getTime().getTime());
        return nextDay;
    }


    public Date getRequestedDate(Date currentDate) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(currentDate);
        calendar.add(Calendar.DAY_OF_WEEK, 7);
        Date RequestedDate = new Date(calendar.getTime().getTime());
        return RequestedDate;
    }


    public Date getCurrentDate() {
        return currentDate;
    }
}
