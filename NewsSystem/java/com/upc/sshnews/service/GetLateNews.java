package com.upc.sshnews.service;

import com.upc.sshnews.pojo.News;

import javax.jws.WebMethod;
import javax.jws.WebService;
import java.util.List;

@WebService
public interface GetLateNews {
    public List<News> getLateNewsList();

    public String SayHelloNews(String name);
}
