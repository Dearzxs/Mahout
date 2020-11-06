package com.movie.control;

import com.movie.dao.MovieDao;
import com.movie.model.movies;
import com.movie.service.BaseUserRecommender;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "/Recommender", urlPatterns = "/Recommender")
public class Recommender extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MovieDao dao=new MovieDao();
        BaseUserRecommender bur=new BaseUserRecommender();
        try {
            List<String> tempList=bur.BUR();
            List<String> tempList1=dao.TransformId(tempList);
            List<movies> movieReList=dao.RecommenderMovie(tempList1);
            request.setAttribute("movieReList", movieReList);//将list放置到request中
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("watch-later.jsp").forward(request, response);//将请求转发到show.jsp页面中
    }
}
