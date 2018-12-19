package main.java.dao;

import main.java.models.User;

public interface LoginDao {
    //根据账号和密码获取用户信息
    User checkLoginDao(String account,String pwd);
    //根据uid获取用户信息
    User checkUidDao(String uid);
}
