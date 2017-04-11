package com.messageSystem.controller.login;

import com.messageSystem.model.dao.AccountDao;
import com.messageSystem.model.entity.Account;
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
    public static final String USER_LOGIN = "user_login";
    @Resource
    private AccountDao accountDao;

    @RequestMapping(path ="/userLogin",method = RequestMethod.POST)
    public String userLogin(String accountParameter,String password,HttpSession session,Model model){

        Account queryUser = accountDao.queryUser(accountParameter);//通过用户名查询到用户的参数

        if (queryUser!=null){//用户存在

            if (queryUser.getPassword().equals(password)&&
                        queryUser.getPermission()==false&&
                        queryUser.getAccountStatus()==true){//密码正确,非管理员，账号无异常，执行登陆

                session.setAttribute(USER_LOGIN,queryUser);
                return "redirect:/showHomePage";

            }else if (queryUser.getPassword().equals(password)&&
                                queryUser.getPermission()!=false){//管理员进入用户注册界面

                session.setAttribute(USER_LOGIN,queryUser);
                return "/WEB-INF/admin.jsp";

            }else {

                //密码不正确
                model.addAttribute("userAccount","密码有误，请从新输入");

            }
        }else {//用户不存在

            model.addAttribute("userAccount","无法登陆用户不存在,请注册");
        }

        return "/index.jsp";
    }


}




