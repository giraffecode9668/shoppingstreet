package main.java.util;

import main.java.models.User;
import main.java.util.Createtable;

import javafx.scene.control.Alert;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static main.java.dao.UsersDao.processSqlError;
import static main.java.dao.UsersDao.rsToUsers;

public class testDatabase {
//    public static void main(String[] args) throws Exception {
//
//        Connection con = Createtable.getConnection();
//        String sql = "INSERT INTO users (account, passwd) VALUES(?, ?)";
//        String selectAllSqlStr="SELECT * FROM users";
//
//        if(con!=null){
//            try {
//                PreparedStatement preparedStatement = con.prepareStatement(sql);
//                preparedStatement.setString(1, "L110");
//                String pw = main.java.util.Security.getMd5("L123");
//                preparedStatement.setString(2, pw);
//
//                preparedStatement.executeUpdate();
//
//
////                ResultSet rs=con.createStatement().executeQuery(selectAllSqlStr);
////                List<Users> UsersList=rsToUsers(rs);
////                String buff = UsersList.get(0).getId();
////                System.out.println(buff);
////                if(UsersList!=null && UsersList.size()!=0){
////                    System.out.println(buff);
////                }
//            } catch (SQLException e) {
//                processSqlError(e);
//            }finally{
//                Createtable.closeConnection(con);
//            }
//        }
//    }
}
