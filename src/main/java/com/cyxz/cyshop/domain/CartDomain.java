package com.cyxz.cyshop.domain;

import java.io.Serializable;

/**
 * 罗海
 */
public class CartDomain implements Serializable {
    private String id;
    private String member_id;
    private String sku_id;
    private String spu_id;
    private String description;
    private String atrri;
    private String stock;
    private String price;
    private String img_path;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getSku_id() {
        return sku_id;
    }

    public void setSku_id(String sku_id) {
        this.sku_id = sku_id;
    }

    public String getMember_id() {
        return member_id;
    }

    public void setMember_id(String member_id) {
        this.member_id = member_id;
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

    public String getAtrri() {
        return atrri;
    }

    public void setAtrri(String atrri) {
        this.atrri = atrri;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getImg_path() {
        return img_path;
    }

    public void setImg_path(String img_path) {
        this.img_path = img_path;
    }

    @Override
    public String toString() {
        return "CartDomain{" +
                "id='" + id + '\'' +
                ", member_id='" + member_id + '\'' +
                ", sku_id='" + sku_id + '\'' +
                ", spu_id='" + spu_id + '\'' +
                ", description='" + description + '\'' +
                ", atrri='" + atrri + '\'' +
                ", stock='" + stock + '\'' +
                ", price='" + price + '\'' +
                ", img_path='" + img_path + '\'' +
                '}';
    }
}
