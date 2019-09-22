package com.cyxz.cyshop.domain;

import java.io.Serializable;

/**
 * @version 1.0.0
 * @ClassName SkuModelMapper
 * @Description sku模板
 * @Author Administrator
 * @date 2019/9/1816:30
 */
public class SkuModel implements Serializable {
    private String id;
    private String name;
    private String catalog3_id;

    @Override
    public String toString() {
        return "SkuModelMapper{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", catalog3_id='" + catalog3_id + '\'' +
                '}';
    }

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

    public String getCatalog3_id() {
        return catalog3_id;
    }

    public void setCatalog3_id(String catalog3_id) {
        this.catalog3_id = catalog3_id;
    }
}
