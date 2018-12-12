package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UsersAction extends HttpServlet{

    public void login(HttpServletRequest request, HttpServletResponse response, HttpSession session)
            throws ServletException, IOException{

        request.setCharacterEncoding("UTF-8");

        String account;
        String password;

        account = request.getParameter("loginname");
        password = request.getParameter("nloginpwd");

        String passwordMD5 = util.Security.getMd5(password);

        String flag = dao.UsersDao.Login(account, passwordMD5);

        if(flag.equals("N")){

        }
        else{
            session.setAttribute("ID", account);
            System.out.println(account);
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

        String flag = dao.UsersDao.Login(account, passwordMD5_1);

    }
}


