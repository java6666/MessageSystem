package model.entity;

/**
 * Created by Administrator on 2017/4/6.
 *    @author  胡正蛮
 *    用户信息表
 */
public class User {
    private Integer id;      //主键
    private String  userName; //用户名
    private String  password; //密码
    private Boolean admin;   //管理权限
    private Boolean gender;  //性别
    private String  birthday;//工作时间
    private String  email;   //电子邮箱

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getAdmin() {
        return admin;
    }

    public void setAdmin(Boolean admin) {
        this.admin = admin;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
