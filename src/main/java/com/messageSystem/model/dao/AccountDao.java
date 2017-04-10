package com.messageSystem.model.dao;

import com.messageSystem.model.entity.Account;

/**
 * Created by admin on 2017/4/10.
 * @Author 张超
 */
public interface AccountDao {

    //用户注册
    boolean userRegister(Account account);

    //查询用户是否存在
    Account queryUser(String account);

}
