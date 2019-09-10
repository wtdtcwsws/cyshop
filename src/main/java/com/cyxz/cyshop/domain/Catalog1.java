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
public class Catalog1 implements Serializable {
    private String id;
    private String varchar;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getVarchar() {
        return varchar;
    }
    public void setVarchar(String varchar) {
        this.varchar = varchar;
    }
    @Override
    public String toString() {
        return "Catalog1{" +
                "id='" + id + '\'' +
                ", varchar='" + varchar + '\'' +
                '}';
    }
}
