package com.service;

import com.bean.User;

/**
 * @author 赵宇(zy)
 * @create 2020-06-10 16:33
 */
public interface UserService {
    public boolean addUser(User user);

    public User login(String username, String password);
}
