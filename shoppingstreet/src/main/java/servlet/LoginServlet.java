package main.java.servlet;



import main.java.models.User;
import main.java.serviceImpl.LoginServiceImpl;
import main.java.services.LoginService;
import main.java.util.Security;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码方式
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        //获取请求信息
        String account=req.getParameter("loginname");

        String pwd=req.getParameter("nloginpwd");
        pwd = Security.getMd5(pwd);
        System.out.println(account+":"+pwd);
        //处理请求信息
        //获取业务层对象
        LoginService ls=new LoginServiceImpl();
        User u=ls.checkLoginService(account, pwd);

        //响应处理结果
        if(u!=null){
            //创建Cookie信息实现三天免登陆
            Cookie c = new Cookie("uid",u.getId()+"");
            //谁知Cookie的有效期
            c.setMaxAge(3*24*3600);
            c.setPath("/login/ck");
            //添加Cookie信息
            resp.addCookie(c);
            //请求转发
            //req.getRequestDispatcher("main").forward(req, resp);
            //将数据存储到session对象中
            HttpSession hs=req.getSession();
            hs.setAttribute("user",u);
            System.out.println(hs);
            //重定向
            resp.sendRedirect("index.jsp");
            return;
        }else{
            //使用request对象实现不同Servlet的数据流转
            PrintWriter out = resp.getWriter();
            out.print("<script>alert('账号不存在,请重新登录');window.location='login.jsp' </script>");
            out.flush();
            out.close();


            return;
        }
    }
}
