package com.cyxz.cyshop.domain;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class OrderItem implements Serializable {
    private String id;
    private String order_id;
    private String sku_id;
    private BigDecimal nums;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getOrder_id() {
        return order_id;
    }
    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }
    public String getSku_id() {
        return sku_id;
    }
    public void setSku_id(String sku_id) {
        this.sku_id = sku_id;
    }
    public BigDecimal getNums() {
        return nums;
    }
    public void setNums(BigDecimal nums) {
        this.nums = nums;
    }
    @Override
    public String toString() {
        return "OrderItem{" +
                "id='" + id + '\'' +
                ", order_id='" + order_id + '\'' +
                ", sku_id='" + sku_id + '\'' +
                ", nums=" + nums +
                '}';
    }
}
