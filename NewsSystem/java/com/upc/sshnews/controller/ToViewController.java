package com.upc.sshnews.controller;

import com.upc.sshnews.pojo.News;
import com.upc.sshnews.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ToViewController {

    @Autowired
    private NewsService newsService;

    @ResponseBody
    @RequestMapping("toAdminPage")
    public ModelAndView toAdminPage(){
        ModelAndView modelAndView = new ModelAndView("adminpage");

        List<News> newsList = newsService.getAllNews();

        modelAndView.addObject("newsList",newsList);

        return modelAndView;
    }

    @ResponseBody
    @RequestMapping("toUserPage")
    public ModelAndView toUserPage(){

        ModelAndView modelAndView = new ModelAndView("userpage");

        List<News> newsList = newsService.getAllNews();

        modelAndView.addObject("newsList",newsList);

        return modelAndView;
    }
}
