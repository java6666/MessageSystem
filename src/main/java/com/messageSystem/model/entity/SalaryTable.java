package com.messageSystem.model.entity;

import java.util.Date;

/**
 * Created by admin on 2017/4/12.
 * 工资表
 * @Author 张超
 */
public class SalaryTable {
    private Integer id;
    private Integer userMessageId;         //用户id
    private Integer dailyAttendanceRecord; //员工考勤id
    private Date    payTime;               //发工资时间
    private Double baseSalary;             //基本工资
    private Double overtimeWage;           //加班工资
    private Double housingAllowance;       //住房补贴
    private Double tax;                    //扣税
    private Double fsalary;                //实发工资

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

    public Integer getDailyAttendanceRecord() {
        return dailyAttendanceRecord;
    }

    public void setDailyAttendanceRecord(Integer dailyAttendanceRecord) {
        this.dailyAttendanceRecord = dailyAttendanceRecord;
    }

    public Date getPayTime() {
        return payTime;
    }

    public void setPayTime(Date payTime) {
        this.payTime = payTime;
    }

    public Double getBaseSalary() {
        return baseSalary;
    }

    public void setBaseSalary(Double baseSalary) {
        this.baseSalary = baseSalary;
    }

    public Double getOvertimeWage() {
        return overtimeWage;
    }

    public void setOvertimeWage(Double overtimeWage) {
        this.overtimeWage = overtimeWage;
    }

    public Double getHousingAllowance() {
        return housingAllowance;
    }

    public void setHousingAllowance(Double housingAllowance) {
        this.housingAllowance = housingAllowance;
    }

    public Double getTax() {
        return tax;
    }

    public void setTax(Double tax) {
        this.tax = tax;
    }

    public Double getFsalary() {
        return fsalary;
    }

    public void setFsalary(Double fsalary) {
        this.fsalary = fsalary;
    }
}
