package com.cyxz.cyshop.domain;

import java.awt.peer.DialogPeer;
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
public class CommoditySku implements Serializable {
    private String id;
    private String spu_id;
    private String description;
    private BigDecimal price;
    private Integer stock;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getSpu_id() {
        return spu_id;
    }
    public void setSpu_id(String spu_id) {
        this.spu_id = spu_id;
    }
    public String getDescription() {
        return description;
    }
    public void setDescription(String description) {
        this.description = description;
    }
    public BigDecimal getPrice() {
        return price;
    }
    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public Integer getStock() {
        return stock;
    }
    public void setStock(Integer stock) {
        this.stock = stock;
    }
    @Override
    public String toString() {
        return "CommoditySku{" +
                "id='" + id + '\'' +
                ", spu_id='" + spu_id + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                '}';
    }
}
