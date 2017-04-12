package com.messageSystem.model.entity;

import java.util.Date;

/**
 * Created by admin on 2017/4/12.
 * 人员状态表
 * @Author 张超
 *
 */
public class MatterTable {
    private Integer id;
    private Integer userMessageId;  //用户id
    private String  matter;         //事项:  病假，产假，出差，年
    private Date    startTime;      //起始时间
    private Date    endTime;        //结束时间

}
