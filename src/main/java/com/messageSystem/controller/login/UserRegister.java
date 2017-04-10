package com.messageSystem.controller.login;

import com.messageSystem.model.dao.UserDao;
import com.messageSystem.model.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * Created by admin on 2017/4/8.
 * 用户注册
 *
 * @Author 张超
 */
@Controller
public class UserRegister {
    @Resource
    private UserDao userDao;

    @RequestMapping(path ="/userRegister", method = RequestMethod.POST)
    public String userRegister(String userName, String password, Model model) {
        User user = new User();
        if ((userName != null && !userName.isEmpty()) &&
                (password != null && !password.isEmpty())) {
            user.setUserName(userName);
            user.setPassword(password);

            User queryUser = userDao.queryUser(user);

            if (queryUser==null) {
                boolean b = userDao.insertUser(user);
                System.out.println(b);

                model.addAttribute("user", "注册成功");
            } else {
                model.addAttribute("user", "不能注册用户已存在");
            }

        } else {
            model.addAttribute("user", "无效数据，无法注册");
        }


        return "/index.jsp";
    }


}
