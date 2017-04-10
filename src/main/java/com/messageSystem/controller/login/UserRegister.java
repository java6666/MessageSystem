package com.messageSystem.controller.login;

import com.messageSystem.model.dao.AccountDao;
import com.messageSystem.model.entity.Account;
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
    private AccountDao accountDao;


    @RequestMapping(path = "/userRegister", method = RequestMethod.POST)
    public String userRegister(String accountParameter, String password, Model model) {
        Account account = new Account();
        if (accountParameter != null && !accountParameter.isEmpty()) {
            account.setAccount(accountParameter);
        }
        if (password != null && !password.isEmpty()) {
            account.setPassword(password);
        }

        Account queryAccount = accountDao.queryUser(accountParameter);

         if(queryAccount == null) {//如果为空说明不存在

             boolean b = accountDao.userRegister(account);//注册信息
             model.addAttribute("userAccount",b);
             System.out.println("注册状态:"+b);

         }else {//用户存在不能注册
             model.addAttribute("userAccount",false);
             System.out.println("注册失败");
         }

        return "/index.jsp";
    }

}
