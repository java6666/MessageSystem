package model.entity;

/**
 * Created by Administrator on 2017/4/6.
 *  @author 胡正蛮
 *
 *  注：完善简历页面，教育经历类
 */
public class EducationExperience {
     private Integer id;            //主键
     private Integer userId;        //外键(关联user表)
     private String  schoolName;    //学校名
     private String  education;     //学历
     private String  specialty;     //专业
     private String  admissionDate; //入学时间
     private String  graduateTime;  //毕业时间

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

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getSpecialty() {
        return specialty;
    }

    public void setSpecialty(String specialty) {
        this.specialty = specialty;
    }

    public String getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(String admissionDate) {
        this.admissionDate = admissionDate;
    }

    public String getGraduateTime() {
        return graduateTime;
    }

    public void setGraduateTime(String graduateTime) {
        this.graduateTime = graduateTime;
    }
}
