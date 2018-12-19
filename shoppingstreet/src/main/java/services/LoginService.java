package main.java.services;

import main.java.models.User;

public interface LoginService {
    //校验用户登录信息
    User checkLoginService(String account, String pwd);
    //校验用户Cookie信息
    User checkUidService(String uid);
}
