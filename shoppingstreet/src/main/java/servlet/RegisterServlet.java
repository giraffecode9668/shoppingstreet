package main.java.servlet;

import main.java.models.User;
import main.java.serviceImpl.LoginServiceImpl;
import main.java.serviceImpl.RegisterServiceImpl;
import main.java.services.LoginService;
import main.java.services.RegisterService;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码方式
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        //获取请求信息
        String account=req.getParameter("eptUser.email");
        String pwd=req.getParameter("eptUser.password");
        String pwdrt=req.getParameter("pwdRepeat");

        //处理请求信息
        //获取业务层对象
        if(!pwd.equals(pwdrt)){
            PrintWriter out = resp.getWriter();
            out.print("<script>alert('两次密码不同，请重新输入');window.location='reg.jsp' </script>");
            out.flush();
            out.close();
        }
        RegisterService ls=new RegisterServiceImpl();

        User u=ls.checkRegisterService(account, pwd);
        //响应处理结果
        //如果用户为空，则注册用户成功，如果用户不为空，则存在同账号名，注册失败
        if(u!=null){
            PrintWriter out = resp.getWriter();
            out.print("<script>alert('账号已经存在，请更换账号');window.location='reg.jsp' </script>");
            out.flush();
            out.close();
        }else{
            User user = new User();
            user.setId(account);
            user.setName("购购");
            HttpSession hs=req.getSession();
            hs.setAttribute("user",user);
            System.out.println("regServlet :"+ hs.getAttribute("user"));

            PrintWriter out = resp.getWriter();
            out.print("<script>alert('注册成功，跳转到首页');window.location='index.jsp' </script>");
            out.flush();
            out.close();

        }
//        if(u!=null){
//            //创建Cookie信息实现三天免登陆
//            Cookie c = new Cookie("uid",u.getId()+"");
//            //谁知Cookie的有效期
//            c.setMaxAge(3*24*3600);
//            c.setPath("/login/ck");
//            //添加Cookie信息
//            resp.addCookie(c);
//            //请求转发
//            //req.getRequestDispatcher("main").forward(req, resp);
//            //将数据存储到session对象中
//            HttpSession hs=req.getSession();
//            hs.setAttribute("user",u);
//            System.out.println(hs);
//            //重定向
//            resp.sendRedirect("index.jsp");
//            return;
//        }else{
//            //使用request对象实现不同Servlet的数据流转
//            req.setAttribute("str", "用户名或密码错误");
//            PrintWriter out = resp.getWriter();
//            out.print("<script>alert('账号不存在,请重新登录');window.location='login.jsp' </script>");
//            out.flush();
//            out.close();
//
//
//            return;
//        }
    }
}
