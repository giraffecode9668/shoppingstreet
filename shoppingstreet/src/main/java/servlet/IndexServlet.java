package main.java.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class IndexServlet  extends HttpServlet{

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //设置编码方式
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        //获取请求信息
        String id = req.getParameter("picid");
        System.out.println("sn :" + req.getParameter("picid"));
        resp.getWriter().write("<h2>我是IndexServlet.java："+ id +"</h2>");

        //处理请求信息
        //获取业务层对象

        //响应处理结果·

    }

}
