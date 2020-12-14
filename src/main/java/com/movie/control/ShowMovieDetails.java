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

        movies mov =dao.QueOneMovie(id);//获得该电影详细内容
        request.setAttribute("movieDetails", mov);

        BaseItemRecommender bir=new BaseItemRecommender();
        HttpSession session = request.getSession();
        User TemUser=(User)session.getAttribute("user");
        try {

            List<person> performerList=dao.PerformerList(id);

            List<String> tempList=bir.BIR(TemUser.getUserId(),id);
            List<movies> movieItemReList=dao.RecommenderMovieByItem(tempList);

            request.setAttribute("movieIReList", movieItemReList);//将基于电影的推荐列表放置到request中
            request.setAttribute("personList", performerList);//将参演人员列表放置到request中
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("movie-detail.jsp").forward(request, response);
    }
}
