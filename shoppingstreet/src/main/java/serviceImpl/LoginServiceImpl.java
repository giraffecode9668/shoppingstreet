package main.java.serviceImpl;

import main.java.dao.LoginDao;
import main.java.dao.daoImpl.LoginDaoImpl;
import main.java.models.User;
import main.java.services.LoginService;

public class LoginServiceImpl implements LoginService {
    //创建Dao层对象
    LoginDao ld=new LoginDaoImpl();

    public User checkLoginService(String account, String pwd) {

        return ld.checkLoginDao(account, pwd);
    }

    public User checkUidService(String uid) {
        return ld.checkUidDao(uid);
    }
}
