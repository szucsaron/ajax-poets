package com.codecool.web.servlet;

import com.codecool.web.dao.database.DatabaseWorksDao;
import com.codecool.web.model.User;
import com.codecool.web.model.Work;
import com.codecool.web.service.WorkService;
import com.codecool.web.service.simple.SimpleWorkService;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import static javax.servlet.http.HttpServletResponse.SC_OK;

@WebServlet("/protected/work_content")

public class WorkServlet extends AbstractServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        try (Connection connection = getConnection(req.getServletContext())) {
            User user = (User) req.getSession().getAttribute("user");
            WorkService workService = new SimpleWorkService(new DatabaseWorksDao(connection));
            int id = Integer.parseInt(req.getParameter("workId"));

            Work work = workService.findById(id);
            if (work != null) {
                sendMessage(resp, SC_OK, work);
            }


        } catch (SQLException ex) {
            handleSqlError(resp, ex);
        }
    }

}
