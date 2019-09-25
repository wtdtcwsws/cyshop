package com.cyxz.cyshop.viewobject;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class ConfirmOrderVO implements Serializable {
    private String spu_img;
    private String spu_name;
    private List<String> sku_name;
    private BigDecimal nums;
//    单价
    private BigDecimal unitPrice;
//    商品总价
    private BigDecimal price;
    private BigDecimal postPrice;
    private BigDecimal orderPrice;
    private String skuId;

    public String getSpu_img() {
        return spu_img;
    }

    public void setSpu_img(String spu_img) {
        this.spu_img = spu_img;
    }

    public String getSpu_name() {
        return spu_name;
    }

    public void setSpu_name(String spu_name) {
        this.spu_name = spu_name;
    }

    public List<String> getSku_name() {
        return sku_name;
    }

    public void setSku_name(List<String> sku_name) {
        this.sku_name = sku_name;
    }

    public BigDecimal getNums() {
        return nums;
    }

    public void setNums(BigDecimal nums) {
        this.nums = nums;
    }

    public BigDecimal getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(BigDecimal unitPrice) {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getPostPrice() {
        return postPrice;
    }

    public void setPostPrice(BigDecimal postPrice) {
        this.postPrice = postPrice;
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public String getSkuId() {
        return skuId;
    }

    public void setSkuId(String skuId) {
        this.skuId = skuId;
    }

    @Override
    public String toString() {
        return "ConfirmOrderVO{" +
                "spu_img='" + spu_img + '\'' +
                ", spu_name='" + spu_name + '\'' +
                ", sku_name=" + sku_name +
                ", nums=" + nums +
                ", unitPrice=" + unitPrice +
                ", price=" + price +
                ", postPrice=" + postPrice +
                ", orderPrice=" + orderPrice +
                ", skuId='" + skuId + '\'' +
                '}';
    }
}
