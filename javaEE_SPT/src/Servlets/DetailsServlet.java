package Servlets;

import Classes.DBmanager;
import Classes.Tasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(value = "/details")
public class DetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long id = Long.valueOf(req.getParameter("id"));

        Tasks tasks = DBmanager.getTask(id);
        req.setAttribute("tap", tasks);
        req.getRequestDispatcher("details.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList task = DBmanager.getAllTasks();
        req.setAttribute("save",task);
        resp.sendRedirect("tasks");
    }
}
