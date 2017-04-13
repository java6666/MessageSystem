package com.messageSystem.model.entity;

/**
 * Created by admin on 2017/4/10.
 *  地址
 *  @Author 张超
 *
 */
public class  Address {
    private Integer id;
    private Integer userMessageId;         //用户id
    private Integer companyId;             //公司id
    private Integer educationExperienceId; //学校的id
    private String nationality;            //国籍
    private String province;               //省份
    private String city;                   //城市
    private String district;               //区/县
    private String street;                 //街道
    private String community;              //小区
    private String houseNumber;            //门牌号码

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

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getEducationExperienceId() {
        return educationExperienceId;
    }

    public void setEducationExperienceId(Integer educationExperienceId) {
        this.educationExperienceId = educationExperienceId;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCommunity() {
        return community;
    }

    public void setCommunity(String community) {
        this.community = community;
    }

    public String getHouseNumber() {
        return houseNumber;
    }

    public void setHouseNumber(String houseNumber) {
        this.houseNumber = houseNumber;
    }
}
