package com.upc.sshnews.dao.daoImp;

import com.upc.sshnews.dao.UserDao;
import com.upc.sshnews.pojo.News;
import com.upc.sshnews.pojo.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.omg.CORBA.OBJ_ADAPTER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.support.JstlUtils;

import javax.enterprise.inject.New;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Repository
public class UserDaoImp implements UserDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Transactional(readOnly = true)/*查询为只读*/
    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }
    @Override
    public void addUser() {

    }

    @Transactional(readOnly = true)/*查询为只读*/
    @Override
    public boolean userLogin(String username, String password) {
      User user = (User)sessionFactory.getCurrentSession().get(User.class,username);
      if(user==null){
          return false;
      }
      else  if(user.getPassword().equals(password)){
          return true;
      }else {
          return false;
      }
    }

    @Transactional(readOnly = true)
    @Override
    public List<News> displayAllNews() {
        String sql = "select n from News n";
        Query query = sessionFactory.getCurrentSession().createQuery(sql);
        List<News> newsList = query.list();
        for(News news:newsList){
            System.out.println(news.getContent());
        }
        return newsList;
    }


}
