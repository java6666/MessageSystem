package com.messageSystem.web;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

import static com.messageSystem.controller.login.LoginUser.USER_LOGIN;


/**
 * Created by admin on 2017/4/8.
 * 拦截服务
 * @author 张超
 */
@WebFilter
public class MyFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("初始化");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req= (HttpServletRequest) servletRequest;
        HttpServletResponse resp= (HttpServletResponse) servletResponse;
        String path = req.getServletPath();
        if(path.endsWith(".jsp")||path.endsWith(".css")
                ||path.endsWith(".js")||path.endsWith(".jpg")||
                path.equals("/userLogin")
                ){
            filterChain.doFilter(servletRequest,servletResponse);
            return;
        }
        if((req.getSession().getAttribute(USER_LOGIN))!=null){
            filterChain.doFilter(servletRequest,servletResponse);
        }else {
            resp.sendRedirect("/");
        }
    }
    @Override
    public void destroy() {

    }
}
