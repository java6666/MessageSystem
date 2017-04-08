package com.messageSystem.model.dao;

import com.messageSystem.model.entity.User;
import org.apache.ibatis.annotations.Param;


import java.util.List;

/**
 * Created by admin on 2017/4/6.
 *
 * @Author 张超
 */

public interface UserDao {
    /**
     * 插入数据
     * @param user  前台界面获取的对象
     */
    boolean insertUser(@Param("user") User user);



    /**
     * 查询所有用户信息数据
     * @return list
     */
    List<User> selectUser();


    /**
     * 登录用户查询判断用户是否存在
     * @param user
     * @return
     */
    User queryUser(User user);


}
