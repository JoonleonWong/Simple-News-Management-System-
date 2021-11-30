package com.upc.sshnews.dao;

import com.upc.sshnews.pojo.News;

import java.util.List;

public interface UserDao {
    public void addUser();
    public boolean userLogin(String username,String password);
    public List<News> displayAllNews();

}
