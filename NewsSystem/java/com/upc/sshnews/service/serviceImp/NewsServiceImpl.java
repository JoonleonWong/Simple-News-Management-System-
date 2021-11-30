package com.upc.sshnews.service.serviceImp;

import com.upc.sshnews.dao.NewsDao;
import com.upc.sshnews.pojo.ChartModel;
import com.upc.sshnews.pojo.News;
import com.upc.sshnews.pojo.PageInfo;
import com.upc.sshnews.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.util.List;
import java.util.Map;

@Service
public class NewsServiceImpl implements NewsService {

    @Autowired
    private NewsDao newsDao;
    @Override
    public News displayNewsDeatil(int id) {
        return newsDao.displayNewsDetail(id);
    }

    @Override
    public List<News> getNewslistBypage(PageInfo info) {
        return newsDao.getNewslistBypage((info.getPage()-1)*info.getLimit(),info.getLimit());
    }

    @Override
    public int getNewsCount() {
        return newsDao.getNewsCount();
    }

    @Override
    public List<News> getAllNews(){
        return newsDao.getAllNews();
    }

    @Override
    public void deleteNewsById(int id) {
        newsDao.deleteNewsById(id);
    }

    @Override
    public void publishNews(News news) throws RemoteException, NotBoundException {
        newsDao.publishNews(news);
    }

    @Override
    public ChartModel getNewsForCharts() {
        return newsDao.getNewsForCharts();
    }

    @Override
    public List<Map<String, Object>> getpipDataByYear() {
        return newsDao.getpipDataByYear();
    }

    @Override
    public List<News> getNewslistBySubject(String subject) {
        return newsDao.getNewslistBySubject(subject);
    }


}
