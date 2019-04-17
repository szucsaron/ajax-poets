package com.codecool.web.service.simple;

import com.codecool.web.dao.WorksDao;
import com.codecool.web.model.User;
import com.codecool.web.model.Work;
import com.codecool.web.service.WorkService;

import java.sql.SQLException;

public class SimpleWorkService implements WorkService {
    private final WorksDao worksDao;

    public SimpleWorkService(WorksDao worksDao) {
        this.worksDao = worksDao;
    }

    public Work[] findByUser(User user) throws SQLException {
        return worksDao.findByUserId(user.getId());
    }

    public Work findById(int id) throws SQLException{
        return worksDao.findById(id);
    }
}
