package com.dao.impl;

import com.bean.Product;
import com.dao.ProductDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author 赵宇(zy)
 * @create 2020-06-15 0:04
 */
@Repository
public class ProductDaoImpl implements ProductDao {
    @Autowired
    private JdbcTemplate jt;

    @Override
    public List<Product> findAllProduct() {
        return null;
    }

    @Override
    public List<Product> findProductByState(int state) {
        return null;
    }

    @Override
    public Product findProductById(int pro_id) {
        return null;
    }
}
