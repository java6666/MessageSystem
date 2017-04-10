package com.messageSystem.controller.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by admin on 2017/4/8.
 * 注销登录
 * @Author 张超
 *
 */
@Controller
public class LogOut {

    /**
     * 销毁session
     * @param session
     * @return 退出到主界面
     */

    @RequestMapping(path ="/logOut",method = RequestMethod.GET)
    public String loginOut(HttpSession session){

        session.invalidate();

        return "/index.jsp";

    }
}
