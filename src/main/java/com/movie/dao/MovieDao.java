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

    public int QueAllMovieCount() {
        int count = 0;//总记录数
        String sql = "select count(*) from movies";//查询总记录数的SQL语句
        try {
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {//光标向后移动，并判断是否有效
                count = rs.getInt(1);//对总记录数赋值
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;//返回总记录数
    }

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

    public List<movies> RecommenderMovie(List<String> s){
        List<movies> movieList=new ArrayList<>();
        String sql ="select * from movies where mid in (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            for (int i = 0; i < s.size(); i++) {
                pstmt.setInt(i+1, Integer.parseInt(s.get(i)));//对SQL语句第一个参数赋值
                //System.out.println(s.get(i));
            }
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

    public List<String> TransformId(List<String> s){
        List<String> mList=new ArrayList<>();
        String sql ="select * from movID where id in (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";//待优化，可用临时表
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            for (int i = 0; i < s.size(); i++) {
                pstmt.setInt(i+1, Integer.parseInt(s.get(i)));//对SQL语句第一个参数赋值
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                mList.add(rs.getString("movid"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mList;
    }

    public List<String> TransformId2(List<String> s){
        List<String> mList=new ArrayList<>();
        String sql ="select * from movID where id in (?,?,?,?)";//待优化，可用临时表
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            for (int i = 0; i < s.size(); i++) {
                System.out.println(s.get(i));
                pstmt.setString(i+1, s.get(i));//对SQL语句第一个参数赋值
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                mList.add(rs.getString("movid"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mList;
    }

    public List<movies> RecommenderMovie2(List<String> s){
        List<movies> movieList=new ArrayList<>();
        String sql ="select * from movies where mid in (?,?,?,?)";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            for (int i = 0; i < s.size(); i++) {
                pstmt.setInt(i+1, Integer.parseInt(s.get(i)));//对SQL语句第一个参数赋值
                //System.out.println(s.get(i));
            }
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

    public List<String> ActorList1(String id){
        List<String> personList=new ArrayList<>();
        String sql ="select person_id from relationships where movie_id = ? and role='actor' ";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1,id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                personList.add(rs.getString("person_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        personList=personList.subList(0,5);
        return personList;
    }

    public List<person> ActorList(List<String> s){
        List<person> personList=new ArrayList<>();
        String sql ="select * from person where pid in (?,?,?,?,?)";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            for (int i = 0; i < s.size(); i++) {
                pstmt.setString(i+1, (s.get(i)));//对SQL语句第一个参数赋值
            }
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                person per = new person();
                per.setId(rs.getString("pid"));
                per.setName(rs.getString("name"));
                per.setImg(rs.getString("img"));
                per.setSex(rs.getString("sex"));
                per.setBirthday(rs.getString("birthday"));
                per.setBirthplace(rs.getString("birthplace"));
                per.setSummary(rs.getString("summary"));
                personList.add(per);//将Product对象添加到List集合中
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return personList;
    }

    public List<String> TransformId3(String uname){
        List<String> mList=new ArrayList<>();
        String sql ="select mid from NewusrRate where uname=?";//待优化，可用临时表
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, uname);//对SQL语句第一个参数赋值
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                mList.add(rs.getString("mid"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mList;
    }

    public List<movies> RecommenderMovie3(List<String> s){
        List<movies> movieList=new ArrayList<>();
        String sql ="select * from movies where mid in (?,?,?,?,?,?,?,?,?,?)";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            for (int i = 0; i < 10; i++) {
                pstmt.setInt(i+1, Integer.parseInt(s.get(i)));//对SQL语句第一个参数赋值
            }
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
}
