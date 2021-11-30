package com.upc.sshnews.service.serviceImp;

import com.upc.sshnews.dao.NewsDao;
import com.upc.sshnews.pojo.News;
import com.upc.sshnews.service.GetLateNews;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.jws.WebMethod;
import javax.jws.WebService;
import java.util.List;

@Service
@WebService
public class GetLateNewsImp implements GetLateNews {

    @Autowired
    private NewsDao newsDao;

    @Override
    public List<News> getLateNewsList() {
        return newsDao.getLateNewsList();
    }

    @Override
    public String SayHelloNews(String name) {
        return "hello news"+name;
    }

}
