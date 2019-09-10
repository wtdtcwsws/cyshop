package com.cyxz.cyshop.domain;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class MemberLevel implements Serializable {
    private String id;
    private Integer level;
    private BigDecimal discount;
    private String name;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public Integer getLevel() {
        return level;
    }
    public void setLevel(Integer level) {
        this.level = level;
    }
    public BigDecimal getDiscount() {
        return discount;
    }
    public void setDiscount(BigDecimal discount) {
        this.discount = discount;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    @Override
    public String toString() {
        return "MemberLevel{" +
                "id='" + id + '\'' +
                ", level=" + level +
                ", discount=" + discount +
                ", name='" + name + '\'' +
                '}';
    }
}
