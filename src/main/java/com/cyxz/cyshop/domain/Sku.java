package com.cyxz.cyshop.domain;

import java.math.BigDecimal;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/18
 * @time14:37
 * @place 西部国际金融中心
 */
public class Sku {
    private String id;
    private String name;
    private BigDecimal price;
    private int stock;
    private int model_id;
    private int spu_id;
    private String description;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getModel_id() {
        return model_id;
    }

    public void setModel_id(int model_id) {
        this.model_id = model_id;
    }

    public int getSpu_id() {
        return spu_id;
    }

    public void setSpu_id(int spu_id) {
        this.spu_id = spu_id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
