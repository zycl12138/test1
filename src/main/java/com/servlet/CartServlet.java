package com.servlet;

import com.bean.Product;
import com.service.ProductService;
import com.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/**
 * @author 赵宇(zy)
 * @create 2020-06-16 14:54
 */
@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    private ProductService ps = new ProductServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String method = request.getParameter("method");
        switch(method){
            case "addInCart":
                addInCart(request,response);
                break;
            case "deleteFromCart":
                deleteFromCart(request,response);
                break;
        }
    }

    private void deleteFromCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String proId = request.getParameter("proId");

        Integer id = Integer.parseInt(proId.trim());

        HttpSession session = request.getSession();
        Map<Product,Integer> cart = (Map<Product,Integer>)session.getAttribute("cart");

        Set<Product> products = cart.keySet();
        for(Product p:products){
            if(p.getPro_id()==id){
                cart.remove(p);
                break;
            }
        }
        response.sendRedirect("/jsp/cart.jsp");
    }

    private void addInCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String quantity = request.getParameter("quantity");
        String proId = request.getParameter("proId");
        Product product = ps.findProductById(Integer.parseInt(proId.trim()));
        /*

        Map<Product,Integer> map = new HashMap<>();


        map.put(product,Integer.parseInt(quantity));

        HttpSession s = request.getSession();

        s.setAttribute("cart",map);

        */

        HttpSession session = request.getSession();

        Map<Product,Integer> cart = (Map<Product,Integer>)session.getAttribute("cart");

        if(cart == null){
            cart = new HashMap<>();
            cart.put(product,Integer.parseInt(quantity.trim()));
            session.setAttribute("cart",cart);
        }else{
            Set<Product> products = cart.keySet();
            boolean flag = false;
            Product pp = null;
            for(Product p : products){
                if(product.getPro_id()==p.getPro_id()){
                    pp = p;
                    flag = true;
                    break;
                }
            }
            if(flag){
                Integer oldNum = cart.get(pp);
                Integer totalNum = oldNum+Integer.parseInt(quantity.trim());
                cart.put(pp,totalNum);
            }else{
                cart.put(product,Integer.parseInt(quantity.trim()));
            }
        }
        response.sendRedirect("/jsp/cart.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
