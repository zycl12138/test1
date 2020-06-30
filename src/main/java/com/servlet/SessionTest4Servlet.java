package com.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author 赵宇(zy)
 * @create 2020-06-16 10:24
 */
@WebServlet("/SessionTest4Servlet")
public class SessionTest4Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession s = request.getSession();
        System.out.println("s:"+s.getId());

        s.invalidate();

        HttpSession s2 = request.getSession();
        System.out.println("s2:"+s2.getId());


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
