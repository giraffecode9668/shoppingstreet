package main.java.serviceImpl;

import main.java.dao.LoginDao;
import main.java.dao.RegisterDao;
import main.java.dao.daoImpl.LoginDaoImpl;
import main.java.dao.daoImpl.RegisterDaoImpl;
import main.java.models.User;
import main.java.services.RegisterService;

public class RegisterServiceImpl implements RegisterService {
    //创建Dao层对象
    RegisterDao ld=new RegisterDaoImpl();

    @Override
    public User checkRegisterService(String account, String pwd) {
        return ld.checkRegisterDao(account, pwd);
    }
}
