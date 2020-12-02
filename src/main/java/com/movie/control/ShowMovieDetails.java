package com.movie.control;

import com.movie.dao.MovieDao;
import com.movie.model.User;
import com.movie.model.movies;
import com.movie.model.person;
import com.movie.service.BaseItemRecommender;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(name = "/ShowMovieDetails",urlPatterns = "/ShowMovieDetails")
public class ShowMovieDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        MovieDao dao=new MovieDao();
        movies mo =dao.QueOneMovie(id);
        request.setAttribute("movieDetails", mo);
        BaseItemRecommender bir=new BaseItemRecommender();
        HttpSession session = request.getSession();
        User TemUser=(User)session.getAttribute("user");
        try {
            List<String> tempList=bir.BIR(TemUser.getUserId(),id);
            List<String> tempList1=dao.TransformId2(tempList);
            List<movies> movieIReList=dao.RecommenderMovie2(tempList1);

            List<String> actorList=dao.ActorList1(id);
            List<person> personList=dao.ActorList(actorList);

            request.setAttribute("movieIReList", movieIReList);//将list放置到request中
            request.setAttribute("personList", personList);//将list放置到request中
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("movie-detail.jsp").forward(request, response);
    }
}
