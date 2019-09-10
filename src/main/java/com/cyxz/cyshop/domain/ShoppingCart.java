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
public class ShoppingCart implements Serializable {
    private String id;
    private String member_id;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getMember_id() {
        return member_id;
    }
    public void setMember_id(String member_id) {
        this.member_id = member_id;
    }
    @Override
    public String toString() {
        return "ShoppingCart{" +
                "id='" + id + '\'' +
                ", member_id='" + member_id + '\'' +
                '}';
    }
}
