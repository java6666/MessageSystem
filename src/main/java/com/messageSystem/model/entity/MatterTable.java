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

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserMessageId() {
        return userMessageId;
    }

    public void setUserMessageId(Integer userMessageId) {
        this.userMessageId = userMessageId;
    }

    public String getMatter() {
        return matter;
    }

    public void setMatter(String matter) {
        this.matter = matter;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
}
