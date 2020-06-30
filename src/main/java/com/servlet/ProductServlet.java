package com.servlet;

import com.bean.Product;
import com.service.ProductService;
import com.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author 赵宇(zy)
 * @create 2020-06-14 23:53
 */
@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {
    private ProductService ps = new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String method = request.getParameter("method");
        switch(method){
            case "findAllProduct":
                findAllProduct(request,response);
                break;
            case "findProductById":
                findProductById(request,response);
                break;
        }
    }

    private void findProductById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pro_id = request.getParameter("productId");
        Product product = ps.findProductById(Integer.parseInt(pro_id));

        request.setAttribute("product",product);
        request.getRequestDispatcher("jsp/product_info.jsp").forward(request,response);
    }

    private void findAllProduct(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<Product> products = ps.findAllProduct();
        List<Product> hotProduct = ps.findProductByState(1);
        List<Product> optimization = ps.findProductByState(2);
        request.setAttribute("hotProduct",hotProduct);
        request.setAttribute("optimization",optimization);
//        request.setAttribute("allProductList",products);
        request.getRequestDispatcher("/jsp/showproduct.jsp").forward(request,response);
    }
}
