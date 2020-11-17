package com.movie.dao;

import com.movie.model.movies;

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
        String sql ="select * from movies where mid in (?,?,?,?,?,?,?,?,?,?)";//分页查询的SQL语句
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
        String sql ="select * from movID where id in (?,?,?,?,?,?,?,?,?,?)";//分页查询的SQL语句
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
}
