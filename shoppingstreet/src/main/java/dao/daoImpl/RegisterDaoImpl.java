package main.java.dao.daoImpl;

import main.java.dao.RegisterDao;
import main.java.models.User;
import main.java.util.Security;

import javax.servlet.http.HttpSession;
import java.sql.*;

public class RegisterDaoImpl implements RegisterDao {

    @Override
    public User checkRegisterDao(String account, String pwd) {
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
            conn= DriverManager.getConnection(url);
            //创建sql命令

            String  sql="select * from users where account =? ";
            //创建sql命令对象
            ps=conn.prepareStatement(sql);
            //给占位符赋值
            ps.setString(1, account);
            //执行
            rs=ps.executeQuery();
            //遍历结果
            while(rs.next()){
                u= new User();
                u.setId(rs.getString("account"));
            }

            if(u==null){
                String  istsql = "insert into users(account,passwd,name)  values(?,?,?)";
                //创建sql命令对象
                ps=conn.prepareStatement(istsql);
                //给占位符赋值
                ps.setString(1,account);
                ps.setString(2, Security.getMd5(pwd));
                ps.setString(3,"购购");
                System.out.println("u null true");
                //执行
                ps.executeUpdate();

            }else{
                while(rs.next()) {
                    u = new User();
                    u.setId(rs.getString("account"));
                    System.out.println(u.getId());
                }
                System.out.println("u null false");
                rs.close();
            }

            //关闭资源
        }catch(Exception e){
            e.printStackTrace();
        }finally{
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
