package com.movie.control;

import com.movie.dao.PersonDao;
import com.movie.model.person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "/QueAllPerson", urlPatterns = "/QueAllPerson")
public class QueAllPerson extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currPage = 1;//当前页码
        if (request.getParameter("page") != null) {//判断传递页面是否有效
            currPage = Integer.parseInt(request.getParameter("page"));//对当前页码赋值
        }
        PersonDao dao = new PersonDao();//实例化PersonDao
        List<person> personList = dao.QueAllPerson(currPage);//查询所有演员的信息
        request.setAttribute("personList", personList);//将list放置到request中
        request.setAttribute("currPage",currPage);
//        int pages;//总页数
//        int count = dao.QueAllPersonCount();//查询总记录数
//        if (count % person.PAGE_SIZE == 0) {
//            pages = count / person.PAGE_SIZE;//对总页数赋值
//        } else {
//            pages = count / person.PAGE_SIZE + 1;//对总页数赋值
//        }
        request.getRequestDispatcher("celebrities-list.jsp").forward(request, response);//将请求转发到show.jsp页面中
    }
}
