package com.movie.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BaseDao {
    DataSource dataSource;

    public BaseDao() {
        try {
            Context context = new InitialContext();
            dataSource =
                    (DataSource) context.lookup("java:comp/env/jdbc/sampleDS");
        } catch (NamingException ne) {
            System.out.println("Exception:" + ne);
        }
    }

    public Connection getConnection() throws Exception {
        return dataSource.getConnection();
    }

    public void close(Connection con, Statement st, ResultSet rs) throws Exception {
        if (con != null) {
            con.close();
        }
        if (st != null) {
            st.close();
        }
        if (rs != null) {
            rs.close();
        }
    }
}

