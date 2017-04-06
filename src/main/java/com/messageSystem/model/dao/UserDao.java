package com.messageSystem.model.dao;

import com.messageSystem.model.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by admin on 2017/4/6.
 *
 * @Author 张超
 */
@Repository
public interface UserDao {
    /**
     * 插入数据
     * @param user  前台界面获取的对象
     */
    boolean insertUser(User user);



    /**
     * 查询所有用户信息数据
     * @return list
     */
    List<User> selectUser();


}
