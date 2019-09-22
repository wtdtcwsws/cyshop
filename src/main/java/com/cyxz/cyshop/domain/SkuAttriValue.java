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
    private String attri_id;
    private String value;

    @Override
    public String toString() {
        return "SkuAttriValue{" +
                "id='" + id + '\'' +
                ", attri_id='" + attri_id + '\'' +
                ", value='" + value + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAttri_id() {
        return attri_id;
    }

    public void setAttri_id(String attri_id) {
        this.attri_id = attri_id;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
