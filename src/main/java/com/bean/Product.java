package com.bean;

/**
 * @author 赵宇(zy)
 * @create 2020-06-11 16:44
 */
public class Product {
    private Integer pro_id;
    private String pro_name;
    private String pro_num;
    private Double market_price;
    private Double shop_price;
    private String pro_color;
    private Integer pro_total_count;
    private String pro_max_img;
    private String pro_min_img;
    private Integer pro_state;

    public Integer getPro_id() {
        return pro_id;
    }

    public void setPro_id(Integer pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public String getPro_num() {
        return pro_num;
    }

    public void setPro_num(String pro_num) {
        this.pro_num = pro_num;
    }

    public Double getMarket_price() {
        return market_price;
    }

    public void setMarket_price(Double market_price) {
        this.market_price = market_price;
    }

    public Double getShop_price() {
        return shop_price;
    }

    public void setShop_price(Double shop_price) {
        this.shop_price = shop_price;
    }

    public String getPro_color() {
        return pro_color;
    }

    public void setPro_color(String pro_color) {
        this.pro_color = pro_color;
    }

    public Integer getPro_total_count() {
        return pro_total_count;
    }

    public void setPro_total_count(Integer pro_total_count) {
        this.pro_total_count = pro_total_count;
    }

    public String getPro_max_img() {
        return pro_max_img;
    }

    public void setPro_max_img(String pro_max_img) {
        this.pro_max_img = pro_max_img;
    }

    public String getPro_min_img() {
        return pro_min_img;
    }

    public void setPro_min_img(String pro_min_img) {
        this.pro_min_img = pro_min_img;
    }

    public Integer getPro_state() {
        return pro_state;
    }

    public void setPro_state(Integer pro_state) {
        this.pro_state = pro_state;
    }
}
