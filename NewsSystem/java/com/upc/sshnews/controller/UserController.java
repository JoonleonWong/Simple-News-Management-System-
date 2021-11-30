package com.upc.sshnews.controller;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.upc.sshnews.pojo.User;
import com.upc.sshnews.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class UserController {
    @Autowired
    private UserService userService;


    @RequestMapping("userLogin")
    public String userLogin(User user,HttpSession session,HttpServletResponse response){
        System.out.println("进入登陆验证.....");

        String username = user.getUsername();//取出用户名

        String password = user.getPassword();//取出密码

        if(userService.userLogin(username,password)){

            session.setAttribute("user",user);//将当前用户放入session域中

            if(username.equals("admin")&&password.equals("admin")){
                return "redirect:toAdminPage.action";
            }
            else {
                return "redirect:toUserPage.action";
            }
        }
        else {
            return "redirect:views/login.jsp";
        }
    }

    @RequestMapping("exitLogin")
    public ModelAndView exitLogin(HttpSession session){
        session.setAttribute("user",null);
        ModelAndView modelAndView = new ModelAndView("login");
        return modelAndView;
    }



}
