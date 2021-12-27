package com.wangpeng.bms.interceptor;

import com.wangpeng.bms.model.User;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 用户拦截器，拦截未登录不能访问的请求
public class UserInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        User user = (User) request.getSession().getAttribute("userObj");

        if(user == null) {  //没有登录
            System.out.println("没有登录!不能访问!");
            // 重定向到登录界面
            response.sendRedirect(request.getContextPath() + "/index.html");
            return false;
        }

        return true;    //放行
    }

}
