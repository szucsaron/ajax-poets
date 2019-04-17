package com.codecool.web.dao;

import com.codecool.web.model.Work;

import java.sql.SQLException;

public interface WorksDao {

    Work[] findByUserId(int id) throws SQLException;

    Work findById(int id) throws SQLException;
}
