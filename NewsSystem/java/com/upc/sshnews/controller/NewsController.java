package com.upc.sshnews.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import com.upc.sshnews.pojo.ChartModel;
import com.upc.sshnews.pojo.News;
import com.upc.sshnews.pojo.PageInfo;
import com.upc.sshnews.pojo.User;
import com.upc.sshnews.service.NewsService;
import com.upc.sshnews.util.GetWeather;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.util.*;


@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @ResponseBody
    @RequestMapping("displayNewsDetail")
    public ModelAndView displayNewsDetail(int id){
        System.out.println("新闻的id是"+id);
        ModelAndView modelAndView = new ModelAndView("newsdetail");
        News news = newsService.displayNewsDeatil(id);
        modelAndView.addObject("news",news);
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("getNewslistBypage")
    public Map getnewslistBypage(PageInfo info){

        List<News> newsList = newsService.getNewslistBypage(info);
        HashMap<String,Object> map = new HashMap<>();
        int count=newsService.getNewsCount();
        map.put("data",newsList);
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        return map;
    }

    @ResponseBody
    @RequestMapping("getAllNews")
    public ModelAndView getAllNews() throws RemoteException, NotBoundException {
        ModelAndView modelAndView = new ModelAndView();
        List<News> newsList = newsService.getAllNews();
        modelAndView.setViewName("homepage");
        modelAndView.addObject("newsList",newsList);
        /*GetWeather getWeather = new GetWeather();
        List<String> weatherlsit = getWeather.getWeatherService();
        for(String s:weatherlsit){
            System.out.println(s);
        }
        modelAndView.addObject("weather",weatherlsit);*/
        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("deleteNewsById")
    public Map deleteNewsById(int id){
        System.out.println("正在进入删除"+id);
        HashMap<String,Object> map = new HashMap<>();
        newsService.deleteNewsById(id);
        map.put("code",0);
        return map;
    }

    @ResponseBody
    @RequestMapping("publishNews")
    public ModelAndView publishNews(News news, HttpSession session, HttpServletRequest request, HttpServletResponse response) throws IOException, NotBoundException {

        ModelAndView modelAndView = new ModelAndView();
        User user = (User) session.getAttribute("user");
        String username = user.getUsername();
        news.setUsername(username);
        Calendar calendar = Calendar.getInstance();
        String createtime = String.valueOf(calendar.get(Calendar.YEAR));
        news.setCreatetime(createtime);
        newsService.publishNews(news);
        List<News> newsList = newsService.getAllNews();

        modelAndView.addObject("newsList",newsList);
        modelAndView.setViewName("userpage");
        return modelAndView;
    }
    @ResponseBody
    @RequestMapping("getNewsForCharts")
    public ChartModel getNewsForCharts() {

        return newsService.getNewsForCharts();
    }

    @ResponseBody
    @RequestMapping("getpipDataByYear")
    public List<Map<String, Object>> getpipDataByYear(){
        return newsService.getpipDataByYear();
    }


    @RequestMapping("getNewslistBySubject")
    public ModelAndView getNewslistBySubject(String subject,HttpSession session){
        System.out.println("查询主题为"+subject+"的新闻.......");
        ModelAndView modelAndView = new ModelAndView();
        if(session.getAttribute("user")==null){
            modelAndView.setViewName("newspagesubject");
        }else {
            modelAndView.setViewName("userpage");
        }

        List<News> newsList = newsService.getNewslistBySubject(subject);
        modelAndView.addObject("newsList",newsList);
        return modelAndView;
    }

    @RequestMapping("getMoreNews")
    public ModelAndView getMoreNews(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        if(session.getAttribute("user")==null){
            modelAndView.setViewName("newspagesubject");
        }else {
            modelAndView.setViewName("userpage");
        }
        List<News> newsList = newsService.getAllNews();
        modelAndView.addObject("newsList",newsList);
        return modelAndView;
    }

}
