package com.messageSystem.model.entity;

/**
 * Created by admin on 2017/4/10.
 * 用户基本信息
 * @Author 张超
 */
public class UserMessage {
    private Integer id;
    private Integer accountTableId;  //账号的id
    private String jobNumber;        //员工工号
    private String userName;         //姓名
    private String idCard;           //身份证号码
    private Boolean gender;          //性别
    private String birthday;         //出生日期
    private String nativePlace;      //籍贯
    private String maritalStatus;    //婚姻状况
    private Integer phoneNumber;     //手机号码

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAccountTableId() {
        return accountTableId;
    }

    public void setAccountTableId(Integer accountTableId) {
        this.accountTableId = accountTableId;
    }

    public String getJobNumber() {
        return jobNumber;
    }

    public void setJobNumber(String jobNumber) {
        this.jobNumber = jobNumber;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getNativePlace() {
        return nativePlace;
    }

    public void setNativePlace(String nativePlace) {
        this.nativePlace = nativePlace;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public Integer getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(Integer phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
