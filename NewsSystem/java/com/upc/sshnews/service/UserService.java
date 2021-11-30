package com.upc.sshnews.service;

import com.upc.sshnews.pojo.News;

import java.util.List;

public interface UserService {
    public void addUser();
    public boolean userLogin(String username,String password);
    public List<News> displayAllNews();
}
