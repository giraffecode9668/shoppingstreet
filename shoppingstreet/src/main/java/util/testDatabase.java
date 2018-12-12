package util;

import models.Users;
import util.Createtable;

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

import static dao.UsersDao.processSqlError;
import static dao.UsersDao.rsToUsers;

public class testDatabase {
    public static void main(String[] args) throws Exception {

        Connection con = Createtable.getConnection();
        String sql = "INSERT INTO Users VALUES(?, ?, ?)";
        String selectAllSqlStr="SELECT * FROM Users where Id='L124'";

        if(con!=null){
            try {
                PreparedStatement preparedStatement=con.prepareStatement(sql);
                preparedStatement.setString(1, "L110");
                preparedStatement.setString(2, "L123");
                String pw = util.Security.getMd5("L123");
                preparedStatement.setString(3, pw);

                preparedStatement.executeUpdate();


                ResultSet rs=con.createStatement().executeQuery(selectAllSqlStr);
                List<Users> UsersList=rsToUsers(rs);
                if(UsersList!=null && UsersList.size()!=0){
                    String buff = UsersList.get(0).getId();
                    System.out.println(buff);
                }
            } catch (SQLException e) {
                processSqlError(e);
            }finally{
                Createtable.closeConnection(con);
            }
        }
    }
}