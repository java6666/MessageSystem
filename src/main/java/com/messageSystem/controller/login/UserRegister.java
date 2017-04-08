package com.messageSystem.controller.login;

import com.messageSystem.model.dao.UserDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by admin on 2017/4/8.
 * 用户注册
 * @Author 张超
 */
@Controller
public class UserRegister {
    @Resource
    private UserDao userDao;

    @RequestMapping(path = "/userRegister",method = RequestMethod.POST)
    public String userRegister(){

        return "";
    }




}
