package util;

import java.sql.*;


import static javafx.application.Application.launch;
import static util.Security.getMd5;


public class createtable {

    static String driverClass = "com.mysql.cj.jdbc.Driver";
    static String url = "jdbc:mysql://localhost:3306/shoppingStreet";


    public static Connection getConnection() {
        Connection con;
        try {
            Class.forName(driverClass);
            con = DriverManager.getConnection(url);
        } catch (Exception e) {
            return null;
        }
        return con;
    }

    public static void main(String[] args) throws Exception {
        Connection con;
        Class.forName(driverClass);
        con = DriverManager.getConnection(url);


        String createUsersTableSqlStr = "CREATE TABLE users (account VARCHAR(20) NOT NULL," +
                " password VARCHAR(40), role VARCHAR(10), contact VARCHAR(20) )";

        String createT_MSTableSqlStr = "CREATE TABLE t_ms (ID VARCHAR(20) NOT NULL, " +
                "name VARCHAR(30), o_price VARCHAR(20), n_price VARCHAR(20), image1 VARCHAR(100), " +
                "image2 VARCHAR(100), image3 VARCHAR(100), image4 VARCHAR(100)";


        processUpdateStatement(createUsersTableSqlStr);
        processUpdateStatement(createT_MSTableSqlStr);

        con.commit();// 提交事务
        con.setAutoCommit(true);// 关闭事务
        launch(args);
    }

    /**
     * 该方法以更新的方式执行传递过来的sql串。
     *
     * @param sql 要执行的sql串。
     * @return 受影响的记录数。返回-1代表执行sql语句失败。
     * @throws SQLException
     *             抛出的SQL异常
     */
    private static int processUpdateStatement(String sql) throws SQLException {
        Connection con = getConnection();
        if (con != null) {
            Statement stmt = con.createStatement();
            int affectedRows = stmt.executeUpdate(sql);
            closeConnection(con);
            return affectedRows;
        }
        return -1;
    }

    public static void closeConnection(Connection con) {
        try {
            if (con != null && !con.isClosed())
                con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}



