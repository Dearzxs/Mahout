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
        String selectType=request.getParameter("selectType");
        String kword=request.getParameter("search-keyword");
        MovieDao dao = new MovieDao();
        List<movies> movieList;

        if(selectType.equals("movieActor")){
            PersonDao pdao=new PersonDao();
            pdao.CleanTempPerson();
            pdao.SearchPersonByName(kword);
            List<person> personList=pdao.GetTempPerson(1);
            request.setAttribute("personList", personList);//将list放置到request中
            request.setAttribute("currPage",1);
            request.getRequestDispatcher("search-person.jsp").forward(request, response);

        }else{
            dao.CleanTempMovie();
            if(selectType.equals("movieName")){
                dao.TempMovieByName(kword);

            }else if(selectType.equals("movieType")){
                dao.TempMovieByType(kword);
            }else{
                dao.TempMovieByYear(kword);
            }

            movieList = dao.GetTempMovie(1);

            request.setAttribute("movieList", movieList);//将list放置到request中
            request.setAttribute("currPage",1);
            request.getRequestDispatcher("search-movie.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currPage = 1;//当前页码
        if (request.getParameter("page") != null) {//判断传递页面是否有效
            currPage = Integer.parseInt(request.getParameter("page"));//对当前页码赋值
        }
        MovieDao dao = new MovieDao();//实例化MovieDao
        List<movies> movieList = dao.GetTempMovie(currPage);//查询所有电影的信息
        request.setAttribute("movieList", movieList);//将list放置到request中
        request.setAttribute("currPage",currPage);
        request.getRequestDispatcher("movie-list.jsp").forward(request, response);
    }
}
