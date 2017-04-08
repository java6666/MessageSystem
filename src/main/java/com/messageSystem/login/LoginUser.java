package com.messageSystem.login;

import com.messageSystem.model.dao.UserDao;
import com.messageSystem.model.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/**
 * Created by admin on 2017/4/8.
 * 登录服务
 *
 * @Author 张超
 */
@Controller
public class LoginUser {

    public static final String USER_LOGIN = "user_Login";
    @Resource
    private UserDao userDao;

    @RequestMapping(path = "/userLogin", method = RequestMethod.POST)
    public String userLogin(String userName, String password, Model model, HttpSession session) {
        User user = new User();

        if ((userName != null && !userName.isEmpty()) &&
                (password != null && !password.isEmpty())) {//前台进行了判断 if就可以省略
            user.setUserName(userName);
            user.setPassword(password);
        } else {//没有数据
            model.addAttribute("userLogin", "无效数据");
            return "/index.jsp";
        }
           User databasesUser = userDao.queryUser(user);
           if (databasesUser!=null){
               if (user.getPassword().equals(databasesUser.getPassword())) {//判断密码是否正确
                   session.setAttribute(USER_LOGIN,databasesUser);
                   return "redirect:/showHomePage";
               }else {
                   model.addAttribute("userLogin", "密码有误!请重新输入");
               }
           }else {
               model.addAttribute("userLogin", "用户不存在");
           }







        return "/index.jsp";
    }
}




