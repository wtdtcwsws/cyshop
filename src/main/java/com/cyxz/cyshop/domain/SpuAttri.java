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
public class SpuAttri implements Serializable {
    private String id;
    private String spu_id;
    private String name;
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
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    @Override
    public String toString() {
        return "SpuAttri{" +
                "id='" + id + '\'' +
                ", spu_id='" + spu_id + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
