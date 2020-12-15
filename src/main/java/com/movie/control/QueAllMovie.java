package com.movie.control;

import com.movie.dao.MovieDao;
import com.movie.model.movies;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "/QueAllMovie",urlPatterns = "/QueAllMovie")
public class QueAllMovie extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currPage = 1;//当前页码
        if (request.getParameter("page") != null) {//判断传递页面是否有效
            currPage = Integer.parseInt(request.getParameter("page"));//对当前页码赋值
        }
        MovieDao dao = new MovieDao();//实例化MovieDao
        List<movies> movieList = dao.QueAllMovie(currPage);//查询所有电影的信息
        request.setAttribute("movieList", movieList);//将list放置到request中
        request.setAttribute("currPage",currPage);
        request.getRequestDispatcher("movie-list.jsp").forward(request, response);
    }
}
