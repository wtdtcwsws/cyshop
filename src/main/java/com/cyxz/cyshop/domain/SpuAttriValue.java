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
public class SpuAttriValue implements Serializable {
    private String id;
    private String spu_attr_id;
    private String value;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getSpu_attr_id() {
        return spu_attr_id;
    }
    public void setSpu_attr_id(String spu_attr_id) {
        this.spu_attr_id = spu_attr_id;
    }
    public String getValue() {
        return value;
    }
    public void setValue(String value) {
        this.value = value;
    }
    @Override
    public String toString() {
        return "SpuAttriValue{" +
                "id='" + id + '\'' +
                ", spu_attr_id='" + spu_attr_id + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}
