package com.messageSystem.model.entity;

/**
 * Created by admin on 2017/4/12.
 * 考勤表
 * @Author 张超
 */
public class DailyAttendanceRecord {

    private Integer id;
    private Integer userMessageId;  //用户id
    private Integer attendanceRate; //出勤天数  此处有待优化
    private Integer daysOff;        //休假天数
    private Integer pvertimeDays;   //加班天数

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

    public Integer getAttendanceRate() {
        return attendanceRate;
    }

    public void setAttendanceRate(Integer attendanceRate) {
        this.attendanceRate = attendanceRate;
    }

    public Integer getDaysOff() {
        return daysOff;
    }

    public void setDaysOff(Integer daysOff) {
        this.daysOff = daysOff;
    }

    public Integer getPvertimeDays() {
        return pvertimeDays;
    }

    public void setPvertimeDays(Integer pvertimeDays) {
        this.pvertimeDays = pvertimeDays;
    }
}
