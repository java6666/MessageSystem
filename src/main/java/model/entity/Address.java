package model.entity;

/**
 * Created by Administrator on 2017/4/6.
 *  @author 胡正蛮
 *
 *  注：用户注册创建名片页面“地址时间类”
 *
 */
public class Address {
    private Integer id;         //主键
    private Integer userId;    //外键(关联User表)
    private String  province;   //地址“省”
    private String  city;       // 地址(市、区)
    private String  district;   // 县

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
}
