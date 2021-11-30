package com.upc.sshnews.service.serviceImp;

import com.upc.sshnews.dao.UserDao;
import com.upc.sshnews.pojo.News;
import com.upc.sshnews.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Override
    public void addUser() {
        userDao.addUser();
    }

    @Override
    public boolean userLogin(String username, String password) {
        return userDao.userLogin(username,password);
    }

    @Override
    public List<News> displayAllNews() {
        return userDao.displayAllNews();
    }


}
