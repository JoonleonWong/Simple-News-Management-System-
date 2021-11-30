package com.upc.sshnews.service;

import com.upc.sshnews.pojo.ChartModel;
import com.upc.sshnews.pojo.News;
import com.upc.sshnews.pojo.PageInfo;

import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.util.List;
import java.util.Map;

public interface NewsService {

    public News displayNewsDeatil(int id);

    public List<News> getNewslistBypage(PageInfo info);

    public int getNewsCount();

    public List<News> getAllNews();

    public void deleteNewsById(int id);

    public void publishNews(News news) throws RemoteException, NotBoundException;

    public ChartModel getNewsForCharts();

    public List<Map<String, Object>> getpipDataByYear();

    public List<News> getNewslistBySubject(String subject);
}
