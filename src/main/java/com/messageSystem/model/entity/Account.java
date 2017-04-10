package com.messageSystem.model.entity;

import java.util.Date;

/**
 * Created by admin on 2017/4/10.
 * 用户账号
 *
 * @Author  张超
 */
public class Account{
    private Integer id;
    private String  account;       //账号
    private String  password;      //密码
    private Boolean permission;    //管理权限
    private Date    registerDate;  //注册时间



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getPermission() {
        return permission;
    }

    public void setPermission(Boolean permission) {
        this.permission = permission;
    }


    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }
}
