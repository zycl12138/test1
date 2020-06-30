package com.service.impl;

import com.bean.Product;
import com.dao.ProductDao;
import com.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 赵宇(zy)
 * @create 2020-06-15 0:07
 */
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao pd;
    @Override
    public List<Product> findAllProduct() {
        return pd.findAllProduct();
    }

    @Override
    public List<Product> findProductByState(int state) {
        return pd.findProductByState(state);
    }

    @Override
    public Product findProductById(int pro_id) {
        return pd.findProductById(pro_id);
    }
}
