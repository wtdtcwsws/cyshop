package com.cyxz.cyshop.domain;

import java.io.Serializable;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class ShoppingCartItem implements Serializable {
    private String id;
    private String cart_id;
    private String sku_id;
    private Integer nums;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getCart_id() {
        return cart_id;
    }
    public void setCart_id(String cart_id) {
        this.cart_id = cart_id;
    }
    public String getSku_id() {
        return sku_id;
    }
    public void setSku_id(String sku_id) {
        this.sku_id = sku_id;
    }
    public Integer getNums() {
        return nums;
    }
    public void setNums(Integer nums) {
        this.nums = nums;
    }
    @Override
    public String toString() {
        return "ShoppingCartItem{" +
                "id='" + id + '\'' +
                ", cart_id='" + cart_id + '\'' +
                ", sku_id='" + sku_id + '\'' +
                ", nums=" + nums +
                '}';
    }
}
