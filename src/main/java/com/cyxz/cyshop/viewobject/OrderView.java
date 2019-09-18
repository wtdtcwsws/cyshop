package com.cyxz.cyshop.viewobject;

import java.math.BigDecimal;

/**
 * to do 在订单页面展示的数据对象
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/18
 * @time10:16
 * @place 西部国际金融中心
 */
public class OrderView {
    private String productName;
    private BigDecimal total_price;
    private BigDecimal post_price;
    private BigDecimal payment;
    private int status;//数据库中捞出的status
    private String id;

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public BigDecimal getTotal_price() {
        return total_price;
    }

    public void setTotal_price(BigDecimal total_price) {
        this.total_price = total_price;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public BigDecimal getPost_price() {
        return post_price;
    }

    public void setPost_price(BigDecimal post_price) {
        this.post_price = post_price;
    }

    public BigDecimal getPayment() {
        return payment;
    }

    public void setPayment(BigDecimal payment) {
        this.payment = payment;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId() {
        return id;
    }
}
