package main.java.dao.daoImpl;

import main.java.dao.LoginDao;
import main.java.models.User;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDaoImpl implements LoginDao {
    public User checkLoginDao(String account, String pwd) {
        //声明jdbc对象
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;

        //声明数据存储对象
        User u=null;
        try{
            //加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            //获取连接对象
            String url = "jdbc:mysql://localhost:3306/shoppingStreet?user=root&password=8013&serverTimezone=GMT";
            conn=DriverManager.getConnection(url);
            //创建sql命令
            String  sql="select * from users where account = ? and passwd = ?";
            //创建sql命令对象
            ps=conn.prepareStatement(sql);
            //给占位符赋值
            System.out.println(account +":impl " + pwd );
            ps.setString(1, account);
            ps.setString(2, pwd);
            //执行
            rs=ps.executeQuery();
            //遍历结果
            while(rs.next()){
                u= new User();
                u.setId(rs.getString("account"));
                u.setName(rs.getString("name"));
                u.setPasswd(rs.getString("passwd"));
            }
            //关闭资源
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                rs.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
            try{
                ps.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
            try{
                conn.close();
            }catch(SQLException e){
                e.printStackTrace();
            }

        }
        System.out.println(u);

        return u;
    }

    //根据用户Id获取用户信息
    public User checkUidDao(String uid) {
        //声明jdbc对象
        Connection conn=null;
        PreparedStatement ps=null;
        ResultSet rs=null;

        //声明数据存储对象
        User u=null;
        try{
            //加载驱动
            Class.forName("com.mysql.cj.jdbc.Driver");
            //获取连接对象
            String url = "jdbc:mysql://localhost:3306/shoppingStreet?user=root&password=8013&serverTimezone=GMT";
            conn=DriverManager.getConnection(url);
            //创建sql命令
            String  sql="select * from users where account=?";
            //创建sql命令对象
            ps=conn.prepareStatement(sql);
            //给占位符赋值
            ps.setString(1, uid);
            //执行
            rs=ps.executeQuery();
            //遍历结果
            while(rs.next()){
                u= new User();
                u.setId(rs.getString("account"));
                u.setName(rs.getString("name"));
                u.setPasswd(rs.getString("passwd"));
            }
            //关闭资源
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                rs.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
            try{
                ps.close();
            }catch(SQLException e){
                e.printStackTrace();
            }
            try{
                conn.close();
            }catch(SQLException e){
                e.printStackTrace();
            }

        }

        return u;
    }

}
