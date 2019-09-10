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
public class Catalog2 implements Serializable {
    private String id;
    private String catalog_1_id;
    private String name;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getCatalog_1_id() {
        return catalog_1_id;
    }
    public void setCatalog_1_id(String catalog_1_id) {
        this.catalog_1_id = catalog_1_id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    @Override
    public String toString() {
        return "Catalog2{" +
                "id='" + id + '\'' +
                ", catalog_1_id='" + catalog_1_id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
