package controllers;

import models.Users;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static dao.UsersDao.*;

public class UsersAction extends HttpServlet{

    public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session)
            throws ServletException, IOException{

        request.setCharacterEncoding("UTF-8");

        String account;
        String password;

        account = request.getParameter("loginname");
        password = request.getParameter("nloginpwd");

        String passwordMD5 = util.Security.getMd5(password);

        if (isExist(account)!=1){
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('账号不存在')</script>");
            out.flush();
            out.close();
        }
        else{
            String flag = dao.UsersDao.Login(account, passwordMD5);
            if (flag == "N"){
                response.setCharacterEncoding("utf-8");
                PrintWriter out = response.getWriter();
                out.print("<script>alert('密码错误')</script>");
                out.flush();
                out.close();
            }
            else{
                session.setAttribute("ID", account);
                System.out.println(account);
            }
        }

    }


    public void register(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        request.setCharacterEncoding("UTF-8");

        String account;
        String password1;
        String password2;

        account = request.getParameter("eptUser.email");
        password1 = request.getParameter("eptUser.password");
        password2 = request.getParameter("pwdRepeat");

        String passwordMD5_1 = util.Security.getMd5(password1);
        String passwordMD5_2 = util.Security.getMd5(password2);

        Users newUser = new Users();

        if (isExist(account)==1){
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('账号已存在')</script>");
            out.flush();
            out.close();
        }
        else if (passwordMD5_1.equals(passwordMD5_2)){
            newUser.setId(account);
            newUser.setPasswd(passwordMD5_1);
            newUser.setStatus("Normal");

            int a = Register1(newUser);

            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('注册成功')</script>");
            out.flush();
            out.close();
        }
        else{
            response.setCharacterEncoding("utf-8");
            PrintWriter out = response.getWriter();
            out.print("<script>alert('密码不同')</script>");
            out.flush();
            out.close();
        }

    }

}


