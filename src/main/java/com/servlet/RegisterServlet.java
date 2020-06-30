package com.servlet;

import com.bean.User;
import com.service.UserService;
import com.service.impl.UserServiceImpl;
import com.utils.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 赵宇(zy)
 * @create 2020-06-10 15:16
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private UserService us = new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String sex = request.getParameter("sex");
        String birthday = request.getParameter("birthday");

        User user = new User();
        user.setUsername(username);
        user.setSex(sex);
        user.setPassword(password);
        user.setEmail(email);
        user.setName(name);
        user.setBirthday(DateUtil.stringToDate(birthday));

        boolean result = us.addUser(user);
        if(result){
            System.out.println("添加成功");
            response.sendRedirect("/jsp/login.jsp");
        }else{
            System.out.println("添加失败");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
