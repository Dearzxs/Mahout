package com.movie.dao;

import com.movie.model.person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
        } catch (Exception e) {
            e.printStackTrace();
        }
        return personList;
    }

    public int QueAllPersonCount() {
        int count = 0;//总记录数
        String sql = "select count(*) from person";//查询总记录数的SQL语句
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

    public List<person> SearchPersonByName(String name){
        List<person> personList=new ArrayList<>();
        String sql ="select * from person where name like ?";//分页查询的SQL语句
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1,name+"%");
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
}
