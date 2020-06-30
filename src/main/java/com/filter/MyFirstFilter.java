package com.filter;


import javax.servlet.*;
import java.io.IOException;

/**
 * @author 赵宇(zy)
 * @create 2020-06-17 10:54
 */
public class MyFirstFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("MyFirstFilter出生了");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

    }

    @Override
    public void destroy() {
        System.out.println("销毁了");
    }
}
