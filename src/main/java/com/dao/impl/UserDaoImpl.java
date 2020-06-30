package com.dao.impl;

import com.bean.User;
import com.dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * @author 赵宇(zy)
 * @create 2020-06-10 16:17
 */
@Repository
public class UserDaoImpl implements UserDao {
    @Autowired
    private JdbcTemplate jt;

    @Override
    public Integer insertUser(User user) {
        String sql = "insert into user values(null,?,?,?,?,?,?)";
        int result = jt.update(sql,new Object[]{user.getUsername(),user.getPassword(),user.getEmail(),user.getName(),user.getSex(),user.getBirthday()});
        return result;
    }

    @Override
    public User findUserByUsernameAndPassword(String username, String password) {
        return null;
    }
}
