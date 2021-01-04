package com.movie.dao;

import com.movie.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao extends BaseDao{
    public User LoginUser(String uname){
        String sql ="select * from usrID where userName=?";
        User user = new User();
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, uname);//对SQL语句第一个参数赋值
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                user.setUserId(rs.getString("userId"));
                user.setUserName(uname);
                user.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return user;
    }

    public User NewUser(String uname){
        String sql ="select * from newUser where userName=?";
        User user = new User();
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, uname);//对SQL语句第一个参数赋值
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                user.setUserId(rs.getString("userId"));
                user.setUserName(uname);
                user.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return user;
    }

    public User RegisterUser(String uname,String upass){
        String sql ="insert into newUser values (?,?,?)";
        User user = new User();
        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, uname);//对SQL语句第一个参数赋值
            pstmt.setString(2, uname);//对SQL语句第一个参数赋值
            pstmt.setString(3, upass);//对SQL语句第一个参数赋值
            pstmt.executeUpdate();
            user.setUserId(uname);
            user.setUserName(uname);
            user.setPassword(upass);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return user;
    }
}
