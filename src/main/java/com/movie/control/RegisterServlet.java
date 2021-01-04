package com.movie.control;

import com.movie.dao.LoginDao;
import com.movie.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "/RegisterServlet", urlPatterns = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String userName=request.getParameter("username");
        String password=request.getParameter("password");
        LoginDao dao=new LoginDao();
        User user=dao.RegisterUser(userName,password);
        HttpSession session = request.getSession();
        synchronized(session){
            session.setAttribute("user", user);
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("index-fornew.jsp");
        dispatcher.forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
