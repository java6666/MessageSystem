package com.messageSystem.dao;

import com.messageSystem.model.dao.UserDao;
import com.messageSystem.model.entity.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 * Created by admin on 2017/4/6.
 * @Author 张超
 */
public class TestUserDao {
    private ApplicationContext context=new ClassPathXmlApplicationContext("spring.xml");

    @Test
    public void testInsertUser(){
        User user = new User();
        user.setUserName("可可");
        user.setPassword("123");
        user.setGender(false);
        user.setBirthday("2015-12");
        user.setEmail("737255782@qq.com");
        UserDao dao = context.getBean(UserDao.class);
        dao.insertUser(user);


    }

}
