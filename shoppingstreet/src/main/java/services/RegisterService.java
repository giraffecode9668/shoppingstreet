package main.java.services;

import main.java.models.User;

public interface RegisterService {
    //校验用户登录信息
    User checkRegisterService(String name, String pwd);

}
