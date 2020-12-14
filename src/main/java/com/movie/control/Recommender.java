package com.movie.control;

import com.movie.dao.MovieDao;
import com.movie.model.User;
import com.movie.model.movies;
import com.movie.service.BaseUserRecommender;
import com.movie.service.CountType;

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

@WebServlet(name = "/Recommender", urlPatterns = "/Recommender")
public class Recommender extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        MovieDao dao=new MovieDao();
        BaseUserRecommender bur=new BaseUserRecommender();//获得推荐类
        CountType cp=new CountType();//统计电影电影类型类
        HttpSession session = request.getSession();
        User TemUser=(User)session.getAttribute("user");
        try {

            List<String> tempList=bur.BUR(TemUser.getUserId());//获得推荐电影的ID
            List<movies> movieReList=dao.RecommenderMovieByUser(tempList);//根据推荐电影ID获得电影列表

            //统计前六项类型
            Map<String, Integer> mp=cp.CountTy(movieReList);
            List<String> TyList = new ArrayList<String>();
            List<Integer> CtList = new ArrayList<Integer>();
            int index=0;
            for (Map.Entry<String, Integer> entry : mp.entrySet()) {
                if(index==6) break;
                TyList.add(entry.getKey());
                CtList.add(entry.getValue());
                index++;
            }

            request.setAttribute("movieReList", movieReList);//将movieReList放置到request中
            request.setAttribute("TyList", TyList);//将类型list放置到request中
            request.setAttribute("CtList", CtList);//将数量list放置到request中

        } catch (Exception e) {
            e.printStackTrace();
        }
        request.getRequestDispatcher("watch-later.jsp").forward(request, response);//将请求转发到show.jsp页面中
    }
}
