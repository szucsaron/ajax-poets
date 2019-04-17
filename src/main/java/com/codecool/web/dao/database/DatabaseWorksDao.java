package com.codecool.web.dao.database;

import com.codecool.web.dao.UserDao;
import com.codecool.web.dao.WorksDao;
import com.codecool.web.model.User;
import com.codecool.web.model.Work;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public final class DatabaseWorksDao extends AbstractDao implements WorksDao {

    public DatabaseWorksDao(Connection connection) {
        super(connection);
    }


    public Work[] findByUserId(int id) throws SQLException {

        String sql = "SELECT id, user_id, title, content FROM works WHERE user_id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            try (ResultSet rs = statement.executeQuery()) {
                List<Work> workList = new ArrayList<>();
                while (rs.next()) {
                    workList.add(fetchWork(rs));
                }
                Work[] works =workList.toArray(new Work[workList.size()]);
                return works;
            }
        }
    }

    public Work findById(int id) throws SQLException {

        String sql = "SELECT id, user_id, title, content FROM works WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, id);
            try (ResultSet rs = statement.executeQuery()) {
                if (rs.next()) {
                    return fetchWork(rs);
                } else {
                    return null;
                }
            }
        }
    }

    private Work fetchWork(ResultSet rs) throws SQLException{
        String title = rs.getString("title");
        String content = rs.getString("content");
        int id = rs.getInt("id");
        int userId = rs.getInt("user_id");
        Work work = new Work(id, userId, title, content);
        return work;
    }


}
