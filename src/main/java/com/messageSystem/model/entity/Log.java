package com.messageSystem.model.entity;

import java.util.Date;

/**
 * Created by admin on 2017/4/12.
 * 记录日志
 * @Author  张超
 * */
public class Log {
    private Integer id;
    private Integer accountId;  //账号id
    private String loginId;    //记录session id
    private Date loginTime;     //登录时间
    private Date quitTime;      //退出时间
}
