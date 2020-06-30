package com.servlet;

import com.bean.User;
import com.service.UserService;
import com.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 赵宇(zy)
 * @create 2020-06-11 11:07
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private UserService us = new UserServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = us.login(username,password);

        if(user!=null){
            response.sendRedirect("/jsp/index.jsp");
        }else{
            response.sendRedirect("/jsp/login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
