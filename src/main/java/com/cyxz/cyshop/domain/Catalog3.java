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
public class Catalog3 implements Serializable {
    private String id;
    private String catalog_2_id;
    private String name;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getCatalog_2_id() {
        return catalog_2_id;
    }
    public void setCatalog_2_id(String catalog_2_id) {
        this.catalog_2_id = catalog_2_id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    @Override
    public String toString() {
        return "Catalog3{" +
                "id='" + id + '\'' +
                ", catalog_2_id='" + catalog_2_id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
