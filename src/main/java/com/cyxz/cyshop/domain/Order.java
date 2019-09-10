package com.cyxz.cyshop.domain;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class Order implements Serializable {
    private String id;
    private String member_id;
    private String member_address_id;
    private Date creat_time;
    private Date pay_time;
    private BigDecimal total_price;
    private BigDecimal discounts;
    private BigDecimal post_price;
    private BigDecimal payment;
    private String payment_way_id;
    private String status;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getMember_id() {
        return member_id;
    }
    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }
    public String getMember_address_id() {
        return member_address_id;
    }
    public void setMember_address_id(String member_address_id) {
        this.member_address_id = member_address_id;
    }
    public Date getCreat_time() {
        return creat_time;
    }
    public void setCreat_time(Date creat_time) {
        this.creat_time = creat_time;
    }
    public Date getPay_time() {
        return pay_time;
    }
    public void setPay_time(Date pay_time) {
        this.pay_time = pay_time;
    }
    public BigDecimal getTotal_price() {
        return total_price;
    }
    public void setTotal_price(BigDecimal total_price) {
        this.total_price = total_price;
    }
    public BigDecimal getDiscounts() {
        return discounts;
    }
    public void setDiscounts(BigDecimal discounts) {
        this.discounts = discounts;
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
    public String getPayment_way_id() {
        return payment_way_id;
    }
    public void setPayment_way_id(String payment_way_id) {
        this.payment_way_id = payment_way_id;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    @Override
    public String toString() {
        return "Order{" +
                "id='" + id + '\'' +
                ", member_id='" + member_id + '\'' +
                ", member_address_id='" + member_address_id + '\'' +
                ", creat_time=" + creat_time +
                ", pay_time=" + pay_time +
                ", total_price=" + total_price +
                ", discounts=" + discounts +
                ", post_price=" + post_price +
                ", payment=" + payment +
                ", payment_way_id='" + payment_way_id + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
