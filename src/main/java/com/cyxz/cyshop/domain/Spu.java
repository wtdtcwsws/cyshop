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
public class Spu implements Serializable {
    private String id;
    private String catalog_1_id;
    private String catalog_2_id;
    private String catalog_3_id;
    private String spu_name;
    private String spu_description;
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
    public String getCatalog_2_id() {
        return catalog_2_id;
    }
    public void setCatalog_2_id(String catalog_2_id) {
        this.catalog_2_id = catalog_2_id;
    }
    public String getCatalog_3_id() {
        return catalog_3_id;
    }
    public void setCatalog_3_id(String catalog_3_id) {
        this.catalog_3_id = catalog_3_id;
    }
    public String getSpu_name() {
        return spu_name;
    }
    public void setSpu_name(String spu_name) {
        this.spu_name = spu_name;
    }
    public String getSpu_description() {
        return spu_description;
    }
    public void setSpu_description(String spu_description) {
        this.spu_description = spu_description;
    }
    @Override
    public String toString() {
        return "Spu{" +
                "id='" + id + '\'' +
                ", catalog_1_id='" + catalog_1_id + '\'' +
                ", catalog_2_id='" + catalog_2_id + '\'' +
                ", catalog_3_id='" + catalog_3_id + '\'' +
                ", spu_name='" + spu_name + '\'' +
                ", spu_description='" + spu_description + '\'' +
                '}';
    }
}
