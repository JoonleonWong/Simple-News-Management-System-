package com.upc.sshnews.interceptor;

import com.upc.sshnews.pojo.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ToViewPageInterceptor extends HandlerInterceptorAdapter {
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws IOException {
        User user = (User) httpServletRequest.getSession().getAttribute("user");
        if(user==null){
            /*如果未登录，转到登陆页面*/
            httpServletResponse.sendRedirect("views/login.jsp");
            return false;
        }
        else {
            return true;
        }
    }
}
