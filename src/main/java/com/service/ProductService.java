package com.service;

import com.bean.Product;

import java.util.List;

/**
 * @author 赵宇(zy)
 * @create 2020-06-15 0:07
 */
public interface ProductService {
    public List<Product> findAllProduct();

    List<Product> findProductByState(int state);

    Product findProductById(int pro_id);
}
