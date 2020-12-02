package com.movie.control;

import com.movie.dao.MovieDao;
import com.movie.dao.PersonDao;
import com.movie.model.movies;
import com.movie.model.person;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "/SearchServlet",urlPatterns = "/SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String selecttype=request.getParameter("selecttype");
        String kword=request.getParameter("search-keyword");
        MovieDao dao = new MovieDao();
        List<movies> movieList;
        if(selecttype.equals("mac")){
            PersonDao dao1=new PersonDao();
            List<person> personList=dao1.SearchPersonByName(kword);
            request.setAttribute("personList", personList);//将list放置到request中
            request.setAttribute("currPage",1);
            request.getRequestDispatcher("search-person.jsp").forward(request, response);
        }else{
            if(selecttype.equals("mna")){
                movieList = dao.SearchMovieByName(kword);
            }else if(selecttype.equals("mty")){
                movieList = dao.SearchMovieByType(kword);
            }else{
                movieList = dao.SearchMovieByYear(kword);
            }
            List<movies> movieList1=movieList.subList(0,10);
            request.setAttribute("movieList", movieList1);//将list放置到request中
            request.setAttribute("currPage",1);
            request.getRequestDispatcher("search-movie.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
