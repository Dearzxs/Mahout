package com.movie.dao;//package com.movie.dao;
//
//import Model.*;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//
//public class AdminDao extends BaseDao {
//
//    //添加学生信息
//    public String addStudent(Student student){
//        String sql = "INSERT INTO zhangxs_Student02" + "(zxs_stuID02, zxs_stuName02, zxs_sex02, zxs_age02, zxs_stuSrc02, zxs_stuArea02, zxs_stuCredit02, zxs_classID02)VALUES(?,?,?,?,?,?,?,?)";
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, student.getStuId());
//            pstmt.setString(2, student.getStuName());
//            pstmt.setString(3, student.getSex());
//            pstmt.setInt(4, student.getAge());
//            pstmt.setString(5, student.getStuSrc());
//            pstmt.setString(6, student.getStuArea());
//            pstmt.setFloat(7, student.getStuCredit());
//            pstmt.setString(8, student.getClassId());
//            pstmt.executeUpdate();
//            return "success";
//        } catch (SQLException se) {
//            se.printStackTrace();
//            return se.getMessage();
//        }
//    }
//
//    //添加教师信息
//    public String addTeacher(Teacher teacher){
//        String sql = "INSERT INTO zhangxs_Teacher02" + "(zxs_teaID02,zxs_teaName02,zxs_sex02,zxs_age02,zxs_teaTitle02,zxs_teaPhone02)VALUES(?,?,?,?,?,?)";
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, teacher.getTeaId());
//            pstmt.setString(2, teacher.getTeaName());
//            pstmt.setString(3, teacher.getSex());
//            pstmt.setInt(4, teacher.getAge());
//            pstmt.setString(5, teacher.getTeaTitle());
//            pstmt.setString(6, teacher.getTeaPhone());
//            pstmt.executeUpdate();
//            return "success";
//        } catch (SQLException se) {
//            se.printStackTrace();
//            return se.getMessage();
//        }
//    }
//
//    //修改学生信息
//    public String modifyStu(Student student){
//        String sql = "UPDATE zhangxs_Student02 set zxs_stuName02=?,zxs_sex02=?,zxs_age02=?,zxs_stuSrc02=?,zxs_stuArea02=?,zxs_stuCredit02=?,zxs_classID02=? where zxs_stuID02=?";
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, student.getStuName());
//            pstmt.setString(2, student.getSex());
//            pstmt.setInt(3, student.getAge());
//            pstmt.setString(4, student.getStuSrc());
//            pstmt.setString(5, student.getStuArea());
//            pstmt.setFloat(6, student.getStuCredit());
//            pstmt.setString(7, student.getClassId());
//            pstmt.setString(8, student.getStuId());
//            pstmt.executeUpdate();
//            return "success";
//        } catch (SQLException se) {
//            se.printStackTrace();
//            return se.getMessage();
//        }
//    }
//
//    //修改教师信息
//    public boolean modifyTea(Teacher teacher){
//        String sql = "UPDATE zhangxs_Teacher02 set zxs_teaName02=?,zxs_sex02=?,zxs_age02=?,zxs_teaTitle02=?,zxs_teaPhone02=? where zxs_teaID02=?";
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, teacher.getTeaName());
//            pstmt.setString(2, teacher.getSex());
//            pstmt.setInt(3, teacher.getAge());
//            pstmt.setString(4, teacher.getTeaTitle());
//            pstmt.setString(5, teacher.getTeaPhone());
//            pstmt.setString(6, teacher.getTeaId());
//            pstmt.executeUpdate();
//            return true;
//        } catch (SQLException se) {
//            se.printStackTrace();
//            return false;
//        }
//    }
//
//    // 删除学生记录
//    public boolean DeleteStu(String uid) {
//        String sql = "DELETE FROM zhangxs_Student02 where zxs_stuID02=?";
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, uid);
//            pstmt.executeUpdate();
//            return true;
//        } catch (SQLException se) {
//            se.printStackTrace();
//            return false;
//        }
//    }
//
//    // 删除教师记录
//    public boolean DeleteTea(String uid) {
//        String sql = "DELETE FROM zhangxs_Teacher02 where zxs_teaID02=?";
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, uid);
//            pstmt.executeUpdate();
//            return true;
//        } catch (SQLException se) {
//            se.printStackTrace();
//            return false;
//        }
//    }
//
//    // 获得教师信息
//    public Teacher QueryTea(String uid){
//        String sql = "SELECT * FROM zhangxs_Teacher02 WHERE zxs_teaID02=?";
//        ArrayList<ScoreRes> ScoreList = new ArrayList<ScoreRes>();
//        Teacher tea=new Teacher();
//        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)){
//            pstmt.setString(1, uid);
//            try(ResultSet rst = pstmt.executeQuery()){
//                if (rst.next()) {
//                    tea.setTeaId(rst.getString(1));
//                    tea.setTeaName(rst.getString(2));
//                    tea.setSex(rst.getString(3));
//                    tea.setAge(rst.getInt(4));
//                    tea.setTeaTitle(rst.getString(5));
//                    tea.setTeaPhone(rst.getString(6));
//                }
//                return tea;
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    //修改账户信息
//    public boolean AlterAccount(String uid,String uPass){
//        String sql = "UPDATE zhangxs_Login02 set zxs_pass02=? where zxs_admin02=?";
//        try (Connection conn = dataSource.getConnection();
//             PreparedStatement pstmt = conn.prepareStatement(sql)) {
//            pstmt.setString(1, uPass);
//            pstmt.setString(2, uid);
//            pstmt.executeUpdate();
//            return true;
//        } catch (SQLException se) {
//            se.printStackTrace();
//            return false;
//        }
//    }
//
//    // 获得课程信息
//    public ArrayList<Course> QueryCourse(String uid){
//        String sql = "SELECT * FROM zhangxs_Course02 WHERE zxs_cID02=?";
//        ArrayList<Course> CourseList = new ArrayList<Course>();
//        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)){
//            pstmt.setString(1, uid);
//            try(ResultSet rst = pstmt.executeQuery()){
//                while (rst.next()) {
//                    Course cou = new Course();
//                    cou.setcId(rst.getString(1));
//                    cou.setcName(rst.getString(2));
//                    cou.setcYear(rst.getString(3));
//                    cou.setcTerm(rst.getInt(4));
//                    cou.setcTime(rst.getInt(5));
//                    cou.setcCredit(rst.getFloat(6));
//                    cou.setcType(rst.getString(7));
//                    CourseList.add(cou);
//                }
//                return CourseList;
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    // 获得课程平均成绩
//    public ArrayList<CourseAvg> QueryCourseAvg(){
//        String sql = "SELECT * FROM Class_avg_Score";
//        ArrayList<CourseAvg> CourseAvgList = new ArrayList<CourseAvg>();
//        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)){
//            try(ResultSet rst = pstmt.executeQuery()){
//                while (rst.next()) {
//                    CourseAvg cavg = new CourseAvg();
//                    cavg.setcID(rst.getString(1));
//                    cavg.setcYear(rst.getString(2));
//                    cavg.setScore(rst.getDouble(3));
//                    CourseAvgList.add(cavg);
//                }
//                return CourseAvgList;
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//
//    // 获得地区学生信息
//    public ArrayList<Student> QueryArea(String area){
//        String sql = "SELECT * FROM zhangxs_Student02 WHERE zxs_stuSrc02=?";
//        ArrayList<Student> SAreaList = new ArrayList<Student>();
//        try (Connection conn = dataSource.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)){
//            pstmt.setString(1, area);
//            try(ResultSet rst = pstmt.executeQuery()){
//                while (rst.next()) {
//                    Student stu=new Student();
//                    stu.setStuId(rst.getString(1));
//                    stu.setStuName(rst.getString(2));
//                    stu.setSex(rst.getString(3));
//                    stu.setAge(rst.getInt(4));
//                    stu.setStuSrc(rst.getString(5));
//                    stu.setStuArea(rst.getString(6));
//                    stu.setStuCredit(rst.getFloat(7));
//                    stu.setClassId(rst.getString(8));
//                    SAreaList.add(stu);
//                }
//                return SAreaList;
//            }
//        } catch (SQLException e) {
//            e.printStackTrace();
//            return null;
//        }
//    }
//}
