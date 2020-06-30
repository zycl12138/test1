package com.dao;

import com.bean.User;
import org.springframework.stereotype.Repository;

/**
 * @author 赵宇(zy)
 * @create 2020-06-10 16:16
 */
public interface UserDao {
    public Integer insertUser(User user);

    public User findUserByUsernameAndPassword(String username, String password);
}
