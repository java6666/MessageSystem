package model.dao;

import model.entity.User;
import org.springframework.stereotype.Repository;

/**
 * Created by admin on 2017/4/6.
 * @Author 张超
 */
@Repository
public interface UserDao {
    boolean insertUser(User user);


}
