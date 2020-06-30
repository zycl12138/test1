package com.service.impl;

import com.bean.User;
import com.dao.UserDao;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author 赵宇(zy)
 * @create 2020-06-10 16:34
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao ud;
    @Override
    public boolean addUser(User user) {
        int result = ud.insertUser(user);
        if(result > 0){
            return true;
        }
        return false;
    }

    @Override
    public User login(String username, String password) {
        return ud.findUserByUsernameAndPassword(username,password);
    }
}
