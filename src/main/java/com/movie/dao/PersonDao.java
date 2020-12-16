package com.movie.dao;

import com.movie.model.movies;
import com.movie.model.person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonDao extends BaseDao{
    public List<person> QueAllPerson(int page){
        List<person> personList=new ArrayList<>();
        String sql ="select * from person order by pid limit ?,?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, (page - 1) * person.PAGE_SIZE);//对SQL语句第一个参数赋值
            pstmt.setInt(2, person.PAGE_SIZE);//对SQL语句第二个参数赋值
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
            close(conn,pstmt,rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return personList;
    }

    public int QueTempPersonCount() {
        int count = 0;//总记录数
        String sql = "select count(*) from TempPerson";//查询总记录数的SQL语句
        try {
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {//光标向后移动，并判断是否有效
                count = rs.getInt(1);//对总记录数赋值
            }
            close(conn,pstmt,rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;//返回总记录数
    }

    public void SearchPersonByName(String name){
        String sql ="insert into TempPerson (select * from person where name like ?)";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1,name+"%");
            int rs = pstmt.executeUpdate();
            conn.close();
            pstmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<person> GetTempPerson(int page){
        List<person> personList=new ArrayList<>();
        String sql ="select * from TempPerson order by pid limit ?,?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, (page - 1) * movies.PAGE_SIZE);
            pstmt.setInt(2, movies.PAGE_SIZE);
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
            close(conn,pstmt,rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return personList;
    }

    public void CleanTempPerson(){
        String sql ="truncate table TempPerson;";
        try {
            Connection conn = dataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql);
            int rs = pstmt.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public person QueOnePerson(String id){
        person per = new person();
        String sql ="select * from person where pid=?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1,id);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                per.setId(rs.getString("pid"));
                per.setName(rs.getString("name"));
                per.setImg(rs.getString("img"));
                per.setSex(rs.getString("sex"));
                per.setBirthday(rs.getString("birthday"));
                per.setBirthplace(rs.getString("birthplace"));
                per.setSummary(rs.getString("summary"));
            }
            close(conn,pstmt,rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return per;
    }

    public List<movies> ActingFilmsList(String pid){
        List<String> mList=new ArrayList<>();
        String sql1 ="select movie_id from relationships where person_id=?";
        try (Connection conn1 = dataSource.getConnection(); PreparedStatement pstmt1 = conn1.prepareStatement(sql1)) {
            pstmt1.setString(1, pid);//对SQL语句第一个参数赋值
            ResultSet rs1 = pstmt1.executeQuery();
            while (rs1.next()) {
                mList.add(rs1.getString("movie_id"));
            }
            close(conn1,pstmt1,rs1);
        } catch (Exception e) {
            e.printStackTrace();
        }

        List<movies> movieList=new ArrayList<>();
        String sql2 ="select * from movies where mid in (?,?,?,?,?,?)";
        try (Connection conn2 = dataSource.getConnection(); PreparedStatement pstmt2 = conn2.prepareStatement(sql2)) {
            for (int i = 0; i < 6; i++) {
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
                movieList.add(movie);
            }
            close(conn2,pstmt2,rs2);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }
}
