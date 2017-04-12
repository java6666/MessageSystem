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
            //管理分级     管理员 是 1  ；personnel 2  普通员工 3
            //账号状态 ：0 表示不可用  1  表示可用  2  表示待激活
            if (queryUser.getPassword().equals(password)&&
                    queryUser.getPermission().equals("3")&&
                    queryUser.getAccountStatus().equals("1")
                      ){//密码正确,员工，账号无异常，执行登陆

                session.setAttribute(USER_LOGIN,queryUser);
                return "redirect:/showHomePage";

            }else if (queryUser.getPassword().equals(password)&&
                       queryUser.getPermission().equals("2")&&
                       queryUser.getAccountStatus().equals("1")
                             ){//hr进入的界面
                session.setAttribute(USER_LOGIN,queryUser);
                return "/WEB-INF/hrHomePage.jsp";

            }else if (queryUser.getPassword().equals(password)&&
                        queryUser.getPermission().equals("1") ){  //管理员进入界面

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




