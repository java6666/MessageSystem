package com.messageSystem.dao;

import com.messageSystem.model.dao.AccountDao;
import com.messageSystem.model.entity.Account;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 * Created by admin on 2017/4/6.
 * @Author 张超
 */
public class TestUserDao {
    private ApplicationContext context =
            new ClassPathXmlApplicationContext("spring.xml");

    @Test
    public void testInsertUser() {
/*
        Account account = new Account();
        account.setAccount("123");
      //  account.setPassword("123");
      //  account.setPermission(false);
        AccountDao dao = context.getBean(AccountDao.class);

        //测试插入数据
       // boolean b = dao.userRegister(account);
       // System.out.println(b);

       //测试查询数据
    *//*    Account account1 = dao.queryUser(account);
        System.out.println(account1);*/
    }
}