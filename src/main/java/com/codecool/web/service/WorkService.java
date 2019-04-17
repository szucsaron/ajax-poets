package com.codecool.web.service;

import com.codecool.web.model.User;
import com.codecool.web.model.Work;

import java.sql.SQLException;

public interface WorkService {
    Work[] findByUser(User user) throws SQLException;

    Work findById(int id) throws SQLException;
}
