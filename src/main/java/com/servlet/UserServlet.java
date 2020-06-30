package com.servlet;

import com.bean.User;
import com.service.UserService;
import com.service.impl.UserServiceImpl;
import com.utils.DateUtil;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author 赵宇(zy)
 * @create 2020-06-11 16:02
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String method = request.getParameter("method");

        switch(method){
            case "register":
                register(request,response);
                break;
            case "login":
                login(request,response);
                break;
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
        UserService us = new UserServiceImpl();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        System.out.println(username);
        System.out.println(password);

        User user = us.login(username,password);
        System.out.println(user);

        if(user != null){
            HttpSession s = request.getSession();
            s.setAttribute("user",user);
            response.sendRedirect("/jsp/index.jsp");
        }else{
            response.sendRedirect("/jsp/login.jsp?error=error");
        }
    }

    private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        UserService us = ac.getBean("userServiceImpl",UserService.class);

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
