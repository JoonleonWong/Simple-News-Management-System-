package com.upc.sshnews.dao.daoImp;

import com.sun.deploy.security.BadCertificateDialog;
import com.upc.sshnews.dao.NewsDao;
import com.upc.sshnews.pojo.ChartModel;
import com.upc.sshnews.pojo.News;
import com.upc.sshnews.service.NewsService;
import com.upc.sshnews.util.NewsAbstract;
import com.upc.sshnews.util.NewsInfo;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.support.JstlUtils;

import javax.enterprise.inject.New;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Repository
public class NewsDaoImp implements NewsDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional(readOnly = true)/*查询为只读*/
    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }

    @Transactional(readOnly = true)
    @Override
    public News displayNewsDetail(int id) {
        News news = (News) sessionFactory.getCurrentSession().get(News.class,id);
        return news;
    }

    @Transactional(readOnly = true)
    @Override
    public List<News> getNewslistBypage(int index, int limit) {
        String sql = "select n from News n";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        query.setFirstResult(index);
        query.setMaxResults(limit);
        List<News> newsList = query.list();
        return newsList;
    }

    @Transactional(readOnly = true)
    @Override
    public int getNewsCount() {
        System.out.println("已进入请求count");
        String sql = "select count(*) from News";
        Query query= getCurrentSession().createQuery(sql);
        String strcount = String.valueOf(query.uniqueResult());
        int count = Integer.parseInt(strcount);
        System.out.println("count是"+count);
        return count;
    }

    @Transactional(readOnly = true)
    @Override
    public List<News> getAllNews(){
        String sql = "select n from News n";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        List<News> newsList = query.list();
        return newsList;
    }

    @Transactional
    @Override
    public void deleteNewsById(int id) {
        Session session = getCurrentSession();
        News news = session.get(News.class,id);
        session.delete(news);
    }

    @Transactional
    @Override
    public void publishNews(News news) throws RemoteException, NotBoundException {
        Session session = getCurrentSession();
        /*生成摘要写入数据库*/
        /*返回本地主机在指定端口上对远程对象Registry的引用*/
        Registry registry = LocateRegistry.getRegistry("localhost",2018);
        /*通过名称查找*/
        NewsAbstract newsAbstract=(NewsAbstract) registry.lookup("NewsAbstract");

        String newsAbs = newsAbstract.getAbstract(news.getContent());
        news.setNewsabstract(newsAbs);
        /*将新闻写入*/
        session.save(news);
    }


    @Transactional(readOnly = true)
    @Override
    public ChartModel getNewsForCharts() {
        ChartModel chartModel = new ChartModel();
        chartModel.setTitle("新闻主题数量统计柱状图");
        chartModel.setxData(new ArrayList<String>(){{
            add("政治");
            add("经济");
            add("文化");
            add("科技");
            add("体育");
            add("军事");
        }});

        chartModel.setSerieData(new ArrayList<Integer>(){{
            add(getCountBySubject("政治"));
            add(getCountBySubject("经济"));
            add(getCountBySubject("文化"));
            add(getCountBySubject("科技"));
            add(getCountBySubject("体育"));
            add(getCountBySubject("军事"));

        }});
        return chartModel;
    }

    @Transactional(readOnly = true)
    @Override
    public List<Map<String, Object>> getpipDataByYear() {
        List<Map<String,Object>> pipdata = new ArrayList<>();
        for(int i=2015;i<=2020;i++){
            int count = getCountByYear(String.valueOf(i));
            Map<String,Object> map = new HashMap<>();
            map.put("name",String.valueOf(i));
            map.put("value",count);
            pipdata.add(map);
        }
        return pipdata;
    }

    @Transactional(readOnly = true)
    @Override
    public List<News> getLateNewsList() {
        String sql = "select n from News n order by n.id desc";
        Query query = getCurrentSession().createQuery(sql);
        query.setFirstResult(0);
        query.setMaxResults(5);
        List<News> newsList = query.list();
        return newsList;
    }

    @Transactional(readOnly = true)
    @Override
    public List<News> getNewslistBySubject(String subject) {
        String sql = "select n from News n where n.subject =:subject";
        Query query = getCurrentSession().createQuery(sql);
        query.setParameter("subject",subject);
        List<News> newsList = query.list();
        for(News news:newsList){
            System.out.println(news.getId());
        }
        return newsList;
    }

    @Transactional(readOnly = true)
    public int getCountByYear(String year){
        String sql = "select count(*) from News where createtime=:year";
        Query query= getCurrentSession().createQuery(sql);
        query.setParameter("year",year);
        String strcount = String.valueOf(query.uniqueResult());
        int count = Integer.parseInt(strcount);
        return count;
    }

    @Transactional(readOnly = true)
    public int getCountBySubject(String subject){
        String sql = "select count(*) from News where subject=:subject";
        Query query= getCurrentSession().createQuery(sql);
        query.setParameter("subject",subject);
        String strcount = String.valueOf(query.uniqueResult());
        int count = Integer.parseInt(strcount);
        return count;
    }

}
