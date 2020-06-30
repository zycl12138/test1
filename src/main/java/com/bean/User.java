package com.bean;

import java.util.Date;

/**
 * @author 赵宇(zy)
 * @create 2020-06-10 15:09
 */
public class User {
    private Integer userid;
    private String username;
    private String password;
    private String email;
    private String name;
    private String sex;
    private Date birthday;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(Integer userid, String username, String password, String email, String name, String sex, Date birthday) {
        this.userid = userid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;
        this.sex = sex;
        this.birthday = birthday;
    }

    public User() {
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
