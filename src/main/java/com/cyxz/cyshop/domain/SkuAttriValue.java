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
public class SkuAttriValue implements Serializable {
    private String id;
    private String sku_attri_id;
    private String value;
    private String isavailable;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getSku_attri_id() {
        return sku_attri_id;
    }
    public void setSku_attri_id(String sku_attri_id) {
        this.sku_attri_id = sku_attri_id;
    }
    public String getValue() {
        return value;
    }
    public void setValue(String value) {
        this.value = value;
    }
    public String getIsavailable() {
        return isavailable;
    }
    public void setIsavailable(String isavailable) {
        this.isavailable = isavailable;
    }
    @Override
    public String toString() {
        return "SkuAttriValue{" +
                "id='" + id + '\'' +
                ", sku_attri_id='" + sku_attri_id + '\'' +
                ", value='" + value + '\'' +
                ", isavailable='" + isavailable + '\'' +
                '}';
    }
}
