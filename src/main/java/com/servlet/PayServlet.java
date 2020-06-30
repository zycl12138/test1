package com.servlet;

import com.bean.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;
import java.util.Set;

/**
 * @author 赵宇(zy)
 * @create 2020-06-17 9:47
 */
@WebServlet("/PayServlet")
public class PayServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Map<Product,Integer> cart = (Map<Product,Integer>)session.getAttribute("cart");
        double total = 0;
        Set<Map.Entry<Product,Integer>> set = cart.entrySet();
        for(Map.Entry<Product,Integer> s:set){
            double money = s.getKey().getShop_price()+s.getValue();
            total += money;
        }
        request.setAttribute("total",total);
        request.getRequestDispatcher("/jsp/pay.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
