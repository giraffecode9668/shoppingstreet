package dao;

import models.Users;
import util.Createtable;

import javafx.scene.control.Alert;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import static util.Security.getMd5;

public class UsersDao {

    /**
     * 登录验证功能，传入用户名和密码，在数据库中查找，如果找到了，返回用户类型，没找到则返回N.
     * @param act 用户名
     * @param psw 密码
     */
    public static String Login(String act, String psw){
        String result = "N";
        Connection con = Createtable.getConnection();
        String sql = "select * from users where ID='"+act+"' and passwd='"+psw+"'";
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            List<Users> usersList = new ArrayList<>();
            if(rs.next()){
                String id = rs.getString(1);
                String passwd = rs.getString(2);
                String role = rs.getString(3);
                String contact = rs.getString(4);
                String name = rs.getString(5);
                String face = rs.getString(6);
                String status = rs.getString(7);
                Users aUser=new Users(id, passwd, role, contact, name, face, status);
                result = aUser.getRole();
                return result;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            //stm.close();
            //rs.close();
            Createtable.closeConnection(con);
        }
        return result;
    }


    /**
     *
     * 注册账号，将用户对象保存到数据库
     * 使用preparedStatement防止sql注入
     * @param Users 要保存到数据库的用户对象
     * @return 返回0代表数据库中已有该用户，取消保存。返回1代表保存成功，返回-1代表保存不成功。
     *
     */
    public static int Register1(Users Users){
        Connection con=Createtable.getConnection();
        String sql = "INSERT INTO Users VALUES(?, ?, ?, ?, ?, ?, ?)";
        if(con!=null){
            try {
                if(findById(Users.getId())!=null){
                    
                    return 0;
                }
                PreparedStatement preparedStatement=con.prepareStatement(sql);
                preparedStatement.setString(1, Users.getId());
                preparedStatement.setString(2, Users.getPasswd());
                preparedStatement.setString(3, Users.getRole());
                preparedStatement.setString(4, Users.getContact());
                preparedStatement.setString(5, Users.getName());
                preparedStatement.setString(6, Users.getFace());
                preparedStatement.setString(7, Users.getStatus());
                return preparedStatement.executeUpdate();
            } catch (SQLException e) {
                processSqlError(e);
            }finally{
                Createtable.closeConnection(con);
            }
        }

        return -1;
    }



    /**
     * 注册账号的函数，传入各String型参数
     */
    public static int Register2(String account, String passwd, String role,
                                String name, String contact, String face, String status) {
        Connection con=Createtable.getConnection();
        String sql = "insert into Users values(?,?,?,?,?,?,?)";
        PreparedStatement stm = null;
        int result = 0;
        if(findById(account)!=null){
            
            return 0;
        }
        try {
            stm = con.prepareStatement(sql);
            stm.setString(1, account);
            stm.setString(2, passwd);
            stm.setString(3, role);
            stm.setString(4, contact);
            stm.setString(5, name);
            stm.setString(6, face);
            stm.setString(7, status);
            return result;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Createtable.closeConnection(con);
        }
        return -1;
    }

    /**
     * 该方法调用findById()用于更新数据库中指定用户的信息
     * @param Users 要更新的用户对象
     * @return 返回0代表该用户不存在，返回1代表更新成功，返回-1代表更新失败
     *
     * 修改除id和passwd外的所有信息
     */
    public int update(Users Users){
        Connection con=Createtable.getConnection();
        String updateCourseSqlStr = "UPDATE Users SET role=?, contact=?, name=? ,face=? WHERE account=?";
        if(con!=null){
            try {
                if(findById(Users.getId())==null) {
                    
                    return 0;}
                PreparedStatement preparedStatement=con.prepareStatement(updateCourseSqlStr);
                preparedStatement.setString(1, Users.getRole());
                preparedStatement.setString(2, Users.getContact());
                preparedStatement.setString(3, Users.getName());
                preparedStatement.setString(4, Users.getFace());
                return preparedStatement.executeUpdate();
            } catch (SQLException e) {
                processSqlError(e);
            }finally{
                Createtable.closeConnection(con);
            }
        }
        return -1;
    }

    /**
     * 该方法调用findById()用于更新数据库中指定用户的信息
     * @param Users 要更新的用户对象
     * @return 返回0代表该用户不存在，返回1代表更新成功，返回-1代表更新失败
     *
     * 修改passwd
     */
    public int updatepasswd(Users Users){
        Connection con=Createtable.getConnection();
        String updateCourseSqlStr = "UPDATE Users SET passwd=? WHERE account=?";
        if(con!=null){
            try {
                if(findById(Users.getId())==null) {
                    
                    return 0;}
                PreparedStatement preparedStatement=con.prepareStatement(updateCourseSqlStr);
                String str1 = getMd5(Users.getPasswd());
                preparedStatement.setString(1, str1);
                preparedStatement.setString(2, Users.getId());
                return preparedStatement.executeUpdate();
            } catch (SQLException e) {
                processSqlError(e);
            }finally{
                Createtable.closeConnection(con);
            }
        }
        return -1;
    }


    /**
     * 该方法用于从数据库删除指定account的用户
     * 设置status为del，即为删除状态
     */
    public int deleteAccountById(String account){
        Connection con=Createtable.getConnection();
        String deleteUsersSqlStr = "UPDATE Users SET status = del WHERE account=?";
        if(con!=null){
            try {
                if(findById(account)==null) return 0;
                PreparedStatement preparedStatement=con.prepareStatement(deleteUsersSqlStr);
                preparedStatement.setString(1, account);
                System.out.println("Successfully Delete");
                return preparedStatement.executeUpdate();
            } catch (SQLException e) {
                processSqlError(e);
            }finally{
                Createtable.closeConnection(con);
            }
        }

        return -1;
    }

    /**
     * 该方法根据账户账号从数据库中精确查找账户，返回一个对象
     * @param account 要查找的账户账号
     * @return 指定账户对象
     */
    public static Users findById(String account){
        Connection con=Createtable.getConnection();
        String selectAllSqlStr="SELECT * FROM Users where Id='"+account+"'";
        if(con!=null){
            try {
                ResultSet rs=con.createStatement().executeQuery(selectAllSqlStr);
                List<Users> UsersList=rsToUsers(rs);
                if(UsersList!=null && UsersList.size()!=0)return UsersList.get(0);
            } catch (SQLException e) {
                processSqlError(e);
            }finally{
                Createtable.closeConnection(con);
            }
        }
        return null;
    }

    /**
     * 该方法查询并返回数据库中的所有用户。
     * 该方法可能返回大量的用户对象，有可能造成网络拥堵或机器运行缓慢，请谨慎使用。
     * @return 返回数据库中的所有用户列表。返回null代表查询失败。
     */
    public List<Users> getListOFUsers(){
        Connection con=Createtable.getConnection();
        String selectAllSqlStr="SELECT * FROM Users";
        if(con!=null){
            try {
                ResultSet rs=con.createStatement().executeQuery(selectAllSqlStr);
                List<Users> UsersList=rsToUsers(rs);
                return UsersList;
            } catch (SQLException e) {
                processSqlError(e);
            }finally{
                Createtable.closeConnection(con);
            }
        }
        return null;
    }
    


    /**
     * 该方法用于将账户的结果集转换成账户列表
     * @param rs 要转换的账户结果集
     * @return 转换好的账户列表
     */
    private static List<Users> rsToUsers(ResultSet rs) {
        List<Users> usersList=new ArrayList<>();
        try {
            while (rs.next()) {
                String id = rs.getString(1);
                String passwd = rs.getString(2);
                String role = rs.getString(3);
                String contact = rs.getString(4);
                String name = rs.getString(5);
                String face = rs.getString(6);
                String status = rs.getString(6);
                Users aUser=new Users(id, passwd, role, contact, name, face, status);
                usersList.add(aUser);
            }
            return usersList;
        } catch (SQLException e) {
            processSqlError(e);
        }
        return null;
    }

    /**
     * 该方法用于处理SQL错误
     * @param e 处理SQL语句过程中产生的异常对象
     */
    private static void processSqlError(Exception e) {
        e.printStackTrace();
    }


}
