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
public class SkuAttribute implements Serializable {
    private String id;
    private String sku_id;
    private String name;
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
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    @Override
    public String toString() {
        return "SkuAttribute{" +
                "id='" + id + '\'' +
                ", sku_id='" + sku_id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
