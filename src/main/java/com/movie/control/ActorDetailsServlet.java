package com.movie.control;

import com.movie.dao.PersonDao;
import com.movie.model.movies;
import com.movie.model.person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "/ActorDetailsServlet", urlPatterns = "/ActorDetailsServlet")
public class ActorDetailsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String actorId=request.getParameter("id");
        PersonDao pDao=new PersonDao();
        person p=pDao.QueOnePerson(actorId);

        List<movies> movieList=pDao.ActingFilmsList(actorId);

        request.setAttribute("personDetails", p);
        request.setAttribute("actingFilms", movieList);
        request.getRequestDispatcher("actorDetail.jsp").forward(request, response);
    }
}
