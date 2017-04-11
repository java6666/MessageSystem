package com.messageSystem.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by admin on 2017/4/8.
 * 主页服务
 * @Author 张超
 */
@Controller
public class MessageController {

    @RequestMapping("/showHomePage")
    public String showHomePage(){
        return "/WEB-INF/personHomePage.jsp";
    }

}
