package com.movie.control;

import com.movie.dao.MovieDao;
import com.movie.model.movies;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "/ShowMovieDetails",urlPatterns = "/ShowMovieDetails")
public class ShowMovieDetails extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id=request.getParameter("id");
        MovieDao dao=new MovieDao();
        movies mo =dao.QueOneMovie(id);
        request.setAttribute("movieDetails", mo);
        request.getRequestDispatcher("movie-detail.jsp").forward(request, response);
    }
}
