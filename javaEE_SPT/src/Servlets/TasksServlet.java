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

@WebServlet(value = "/tasks") //открой этот метод деген соз
public class TasksServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Tasks> attribute = DBmanager.getAllTasks();
        req.setAttribute("zadachi", attribute);
        req.getRequestDispatcher("/task.jsp").forward(req,resp);//запрос должен показывать какую страницу
    }

}
