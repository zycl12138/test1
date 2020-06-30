package com.servlet;

import com.bean.User;
import com.utils.DateUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 赵宇(zy)
 * @create 2020-06-15 11:21
 */
@WebServlet("/JSTLServlet")
public class JSTLServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();
        user.setBirthday(DateUtil.stringToDate("1999-12-11'"));
        user.setUsername("张三");
        user.setEmail("admin@aaa.com");
        request.setAttribute("u",user);
        request.getRequestDispatcher("jstl1.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
