package com.messageSystem.model.entity;

/**
 * Created by Administrator on 2017/4/6.
 *  @author  胡正蛮
 *
 *  注：完善简历页面，工作经历类
 *
 */
public class WorkExperience {
    private Integer id;         //主键
    private Integer userId;     //外键(关联用户表)
    private String companyAme;  //公司名字
    private String jobTitle;    //职位名称
    private String startTime;   //入职时间
    private String endTime;     //离职时间
    private Double salary;      //薪资
    private String content;     // 工作职责范围及工作业绩

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getCompanyAme() {
        return companyAme;
    }

    public void setCompanyAme(String companyAme) {
        this.companyAme = companyAme;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
