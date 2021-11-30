package com.upc.sshnews.dao;

import com.upc.sshnews.pojo.ChartModel;
import com.upc.sshnews.pojo.News;

import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.util.List;
import java.util.Map;

public interface NewsDao {
    public News displayNewsDetail(int id);

    public List<News> getNewslistBypage(int index,int limit);

    public int getNewsCount();

    public List<News> getAllNews();

    public void deleteNewsById(int id);

    public void publishNews(News news)  throws RemoteException, NotBoundException;

    public ChartModel getNewsForCharts();

    public List<Map<String,Object>> getpipDataByYear();

    public List<News> getLateNewsList();

    public List<News> getNewslistBySubject(String subject);

}
