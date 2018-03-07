package com.deans.office.service;

/*singleton*/
public class SomeoneService {
    private static SomeoneService instance = null;
    private static Long userId;

    private SomeoneService() {
    }

    public static SomeoneService getInstance(Long id) {
        if (instance == null) {
            instance = new SomeoneService();
            userId = id;
            return instance;
        } else {
            userId = id;
            return instance;

        }
    }
    public static SomeoneService getInstance() {
        if (instance == null) {
            instance = new SomeoneService();
            return instance;
        } else {
            return instance;
        }
    }

    public Long getUserId()  {
        if (instance == null) {
            return -1L; //Error code
        } else {
            return userId;
        }
    }
}




