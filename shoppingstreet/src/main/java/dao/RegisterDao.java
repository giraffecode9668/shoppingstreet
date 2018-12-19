package main.java.dao;

import main.java.models.User;

public interface RegisterDao {
    //根据账号获取是否存在用户
    //存在：返回user，不注册
    //不存在：返回null，注册
    User checkRegisterDao(String account, String pwd);

}
