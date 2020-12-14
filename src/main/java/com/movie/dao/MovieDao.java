package com.movie.dao;

import com.movie.model.movies;
import com.movie.model.person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class MovieDao extends BaseDao{
    public List<movies> QueAllMovie(int page){
        List<movies> movieList=new ArrayList<>();
        String sql ="select * from movies order by mid limit ?,?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, (page - 1) * movies.PAGE_SIZE);//对SQL语句第一个参数赋值
            pstmt.setInt(2, movies.PAGE_SIZE);//对SQL语句第二个参数赋值
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                movies movie = new movies();
                movie.setId(rs.getString("mid"));
                movie.setName(rs.getString("name"));
                movie.setYear(rs.getString("year"));
                movie.setRating(rs.getString("rating"));
                movie.setImg(rs.getString("img"));
                movie.setTags(rs.getString("tags"));
                movie.setSummary(rs.getString("summary"));
                movie.setGenre(rs.getString("genre"));
                movie.setCountry(rs.getString("country"));
                movieList.add(movie);//将Product对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }

//    public int QueAllMovieCount() {
//        int count = 0;//总记录数
//        String sql = "select count(*) from movies";//查询总记录数的SQL语句
//        try {
//            Connection conn = dataSource.getConnection();
//            PreparedStatement pstmt = conn.prepareStatement(sql);
//            ResultSet rs = pstmt.executeQuery();
//            if (rs.next()) {//光标向后移动，并判断是否有效
//                count = rs.getInt(1);//对总记录数赋值
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return count;//返回总记录数
//    }

    public movies QueOneMovie(String id){
        String sql ="select * from movies where mid=?";//分页查询的SQL语句
        movies movie = new movies();
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, Integer.parseInt(id));//对SQL语句第一个参数赋值
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                movie.setId(rs.getString("mid"));
                movie.setName(rs.getString("name"));
                movie.setYear(rs.getString("year"));
                movie.setRating(rs.getString("rating"));
                movie.setImg(rs.getString("img"));
                movie.setTags(rs.getString("tags"));
                movie.setSummary(rs.getString("summary"));
                movie.setGenre(rs.getString("genre"));
                movie.setCountry(rs.getString("country"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movie;
    }

    public List<movies> RecommenderMovieByUser(List<String> s){
        List<String> mList=new ArrayList<>();
        String sql1 ="select movid from movID where id in (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";//推荐20部电影
        try (Connection conn1 = dataSource.getConnection(); PreparedStatement pstmt1 = conn1.prepareStatement(sql1)) {
            for (int i = 0; i < s.size(); i++) {
                pstmt1.setInt(i+1, Integer.parseInt(s.get(i)));
            }
            ResultSet rs1 = pstmt1.executeQuery();
            while (rs1.next()) {
                mList.add(rs1.getString("movid"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        List<movies> movieList=new ArrayList<>();
        String sql2 ="select * from movies where mid in (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";//分页查询的SQL语句
        try (Connection conn2 = dataSource.getConnection(); PreparedStatement pstmt2 = conn2.prepareStatement(sql2)) {
            for (int i = 0; i < mList.size(); i++) {
                pstmt2.setInt(i+1, Integer.parseInt(s.get(i)));//对SQL语句第一个参数赋值
            }
            ResultSet rs2 = pstmt2.executeQuery();
            while (rs2.next()) {
                movies movie = new movies();
                movie.setId(rs2.getString("mid"));
                movie.setName(rs2.getString("name"));
                movie.setYear(rs2.getString("year"));
                movie.setRating(rs2.getString("rating"));
                movie.setImg(rs2.getString("img"));
                movie.setTags(rs2.getString("tags"));
                movie.setSummary(rs2.getString("summary"));
                movie.setGenre(rs2.getString("genre"));
                movie.setCountry(rs2.getString("country"));
                movieList.add(movie);//将Product对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }

    public List<movies> RecommenderMovieByItem(List<String> s){

        List<String> mList=new ArrayList<>();
        String sql1 ="select movid from movID where id in (?,?,?,?)";//推荐5部电影
        try (Connection conn1 = dataSource.getConnection(); PreparedStatement pstmt1 = conn1.prepareStatement(sql1)) {
            for (int i = 0; i < s.size(); i++) {
                pstmt1.setString(i+1, s.get(i));//对SQL语句第一个参数赋值
            }
            ResultSet rs1 = pstmt1.executeQuery();
            while (rs1.next()) {
                mList.add(rs1.getString("movid"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        List<movies> movieList=new ArrayList<>();
        String sql2 ="select * from movies where mid in (?,?,?,?)";//分页查询的SQL语句
        try (Connection conn2 = dataSource.getConnection(); PreparedStatement pstmt2 = conn2.prepareStatement(sql2)) {
            for (int i = 0; i < mList.size(); i++) {
                pstmt2.setInt(i+1, Integer.parseInt(s.get(i)));//对SQL语句第一个参数赋值
            }
            ResultSet rs2 = pstmt2.executeQuery();
            while (rs2.next()) {
                movies movie = new movies();
                movie.setId(rs2.getString("mid"));
                movie.setName(rs2.getString("name"));
                movie.setYear(rs2.getString("year"));
                movie.setRating(rs2.getString("rating"));
                movie.setImg(rs2.getString("img"));
                movie.setTags(rs2.getString("tags"));
                movie.setSummary(rs2.getString("summary"));
                movie.setGenre(rs2.getString("genre"));
                movie.setCountry(rs2.getString("country"));
                movieList.add(movie);//将Product对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }

    public List<person> PerformerList(String id){

        List<String> pList=new ArrayList<>();
        String sql1 ="select person_id from relationships where movie_id = ? and role='actor' ";//分页查询的SQL语句
        try (Connection conn1 = dataSource.getConnection(); PreparedStatement pstmt1 = conn1.prepareStatement(sql1)) {
            pstmt1.setString(1,id);
            ResultSet rs1 = pstmt1.executeQuery();
            while (rs1.next()) {
                pList.add(rs1.getString("person_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        pList=pList.subList(0,5);


        List<person> personList=new ArrayList<>();
        String sql2 ="select * from person where pid in (?,?,?,?,?)";//分页查询的SQL语句
        try (Connection conn2 = dataSource.getConnection(); PreparedStatement pstmt2 = conn2.prepareStatement(sql2)) {
            for (int i = 0; i < pList.size(); i++) {
                pstmt2.setString(i+1, (pList.get(i)));//对SQL语句第一个参数赋值
            }
            ResultSet rs2 = pstmt2.executeQuery();
            while (rs2.next()) {
                person per = new person();
                per.setId(rs2.getString("pid"));
                per.setName(rs2.getString("name"));
                per.setImg(rs2.getString("img"));
                per.setSex(rs2.getString("sex"));
                per.setBirthday(rs2.getString("birthday"));
                per.setBirthplace(rs2.getString("birthplace"));
                per.setSummary(rs2.getString("summary"));
                personList.add(per);//将Product对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return personList;
    }

    public List<movies> MovieHistoryList(String uname){
        List<String> mList=new ArrayList<>();
        String sql1 ="select mid from NewusrRate where uname=?";//待优化，可用临时表
        try (Connection conn1 = dataSource.getConnection(); PreparedStatement pstmt1 = conn1.prepareStatement(sql1)) {
            pstmt1.setString(1, uname);//对SQL语句第一个参数赋值
            ResultSet rs1 = pstmt1.executeQuery();
            while (rs1.next()) {
                mList.add(rs1.getString("mid"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        List<movies> movieList=new ArrayList<>();
        String sql2 ="select * from movies where mid in (?,?,?,?,?,?,?,?,?,?)";//分页查询的SQL语句
        try (Connection conn2 = dataSource.getConnection(); PreparedStatement pstmt2 = conn2.prepareStatement(sql2)) {
            for (int i = 0; i < 10; i++) {
                pstmt2.setInt(i+1, Integer.parseInt(mList.get(i)));//对SQL语句第一个参数赋值
            }
            ResultSet rs2 = pstmt2.executeQuery();
            while (rs2.next()) {
                movies movie = new movies();
                movie.setId(rs2.getString("mid"));
                movie.setName(rs2.getString("name"));
                movie.setYear(rs2.getString("year"));
                movie.setRating(rs2.getString("rating"));
                movie.setImg(rs2.getString("img"));
                movie.setTags(rs2.getString("tags"));
                movie.setSummary(rs2.getString("summary"));
                movie.setGenre(rs2.getString("genre"));
                movie.setCountry(rs2.getString("country"));
                movieList.add(movie);//将Product对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }


    public List<movies> SearchMovieByName(String name){
        List<movies> movieList=new ArrayList<>();
        String sql ="select * from movies where name like ?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1,name+"%");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                movies movie = new movies();
                movie.setId(rs.getString("mid"));
                movie.setName(rs.getString("name"));
                movie.setYear(rs.getString("year"));
                movie.setRating(rs.getString("rating"));
                movie.setImg(rs.getString("img"));
                movie.setTags(rs.getString("tags"));
                movie.setSummary(rs.getString("summary"));
                movie.setGenre(rs.getString("genre"));
                movie.setCountry(rs.getString("country"));
                movieList.add(movie);//将Product对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }

    public List<movies> SearchMovieByType(String type){
        List<movies> movieList=new ArrayList<>();
        String sql ="select * from movies where genre like ?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1,type+"%");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                movies movie = new movies();
                movie.setId(rs.getString("mid"));
                movie.setName(rs.getString("name"));
                movie.setYear(rs.getString("year"));
                movie.setRating(rs.getString("rating"));
                movie.setImg(rs.getString("img"));
                movie.setTags(rs.getString("tags"));
                movie.setSummary(rs.getString("summary"));
                movie.setGenre(rs.getString("genre"));
                movie.setCountry(rs.getString("country"));
                movieList.add(movie);//将movie对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }

    public List<movies> SearchMovieByYear(String year){
        List<movies> movieList=new ArrayList<>();
        String sql ="select * from movies where year = ?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1,year);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                movies movie = new movies();
                movie.setId(rs.getString("mid"));
                movie.setName(rs.getString("name"));
                movie.setYear(rs.getString("year"));
                movie.setRating(rs.getString("rating"));
                movie.setImg(rs.getString("img"));
                movie.setTags(rs.getString("tags"));
                movie.setSummary(rs.getString("summary"));
                movie.setGenre(rs.getString("genre"));
                movie.setCountry(rs.getString("country"));
                movieList.add(movie);//将movie对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }



}
