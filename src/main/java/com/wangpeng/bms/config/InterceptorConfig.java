package com.wangpeng.bms.config;

import com.wangpeng.bms.interceptor.ReaderInterceptor;
import com.wangpeng.bms.interceptor.UserInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration  //表明是配置类
public class InterceptorConfig implements WebMvcConfigurer {

    // 所有的页面和请求
    private static final String[] all = {
            "/**/*.html",
            "/bookInfo/**",
            "/bookType/**",
            "/borrow/**",
            "/update/**",
            "/user/**"
    };

    // 与登录和注册相关的界面和请求
    public static final String[] aboutLogin = {
            "/",
            "/index.html",
            "/register.html",
            "/user/login",
            "/user/register"
    };

    // 与读者相关的页面和请求
    public static final String[] aboutReader = {
            "/reader/**/*.html",    // 读者页面
            "/*/reader/**",         // 读者请求
    };

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 注意，因为浏览器缓存问题，导致不一定能拦截页面，但是功能请求肯定做不了，所以也不影响安全性。

        /**
         * 用户拦截器思路：
         * 1. 拦截所有的页面和请求
         * 2. 排除与登录和注册相关的
         */
        /*registry.addInterceptor(new UserInterceptor())
                .addPathPatterns(all)
                .excludePathPatterns(aboutLogin);*/

        /**
         * 读者拦截器思路：
         * 1. 拦截所有页面和请求
         * 2. 排除与登录相关的页面和请求
         * 3. 排除与读者有关的页面和请求
         */
        /*registry.addInterceptor(new ReaderInterceptor())
                .addPathPatterns(all)
                .excludePathPatterns(aboutLogin)
                .excludePathPatterns(aboutReader);*/
    }
}
