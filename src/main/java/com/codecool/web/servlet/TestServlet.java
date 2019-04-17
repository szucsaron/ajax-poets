package com.codecool.web.servlet;

import com.codecool.web.dao.UserDao;
import com.codecool.web.dao.database.DatabaseUserDao;
import com.codecool.web.model.User;
import com.codecool.web.model.Work;
import com.codecool.web.service.LoginService;
import com.codecool.web.service.exception.ServiceException;
import com.codecool.web.service.simple.SimpleLoginService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import static javax.servlet.http.HttpServletResponse.SC_OK;

@WebServlet("/test")

public class TestServlet extends AbstractServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try (Connection connection = getConnection(req.getServletContext())) {

            Work[] works = new Work[]{
                new Work(0, 1, "Faszom Sándor vagyok", "Nincsen kivel basznom, Evilági földön nem is lehet hasznom"),
                new Work(1, 1, "Önszagú líra", "Anyád anyád")
            };
            sendMessage(resp, SC_OK, works);


        } catch (SQLException ex) {
            handleSqlError(resp, ex);
        }
    }

}
