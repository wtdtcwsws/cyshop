package com.cyxz.cyshop.domain;

import java.io.Serializable;

/**
 * @version 1.0.0
 * @ClassName SkuAttri
 * @Description sku属性值
 * @Author Administrator
 * @date 2019/9/1816:36
 */
public class SkuAttri implements Serializable {
    private String id;
    private String name;

    @Override
    public String toString() {
        return "SkuAttri{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
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
}
