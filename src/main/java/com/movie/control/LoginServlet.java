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

@WebServlet(name = "/LoginServlet", urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String userName=request.getParameter("username");
        String password=request.getParameter("password");
        LoginDao dao=new LoginDao();
        User user=dao.LoginUser(userName);
        HttpSession session = request.getSession();
        if (user != null && password != null && password.equals(user.getPassword())) {
            synchronized(session){
                session.setAttribute("user", user);
            }
            RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
            dispatcher.forward(request, response);
        }else{
            user=dao.NewUser(userName);
            if (user != null && password != null && password.equals(user.getPassword())) {
                synchronized(session){
                    session.setAttribute("user", user);
                }
                RequestDispatcher dispatcher = request.getRequestDispatcher("index-fornew.jsp");
                dispatcher.forward(request, response);
            }else {
                response.sendRedirect("login-wrong.jsp");
            }
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
