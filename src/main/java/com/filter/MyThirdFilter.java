package com.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * @author 赵宇(zy)
 * @create 2020-06-17 11:22
 */
//@WebFilter("/MyThirdFilter")
@WebFilter(servletNames = "SessionTest4Servlet")
public class MyThirdFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("ThirdFilter");
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
