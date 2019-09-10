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
public class RefundOrReturnItem implements Serializable {
    private String id;
    private String return_id;
    private String sku_id;
    private Integer nums;
    private BigDecimal sku_price;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getReturn_id() {
        return return_id;
    }
    public void setReturn_id(String return_id) {
        this.return_id = return_id;
    }
    public String getSku_id() {
        return sku_id;
    }
    public void setSku_id(String sku_id) {
        this.sku_id = sku_id;
    }
    public Integer getNums() {
        return nums;
    }
    public void setNums(Integer nums) {
        this.nums = nums;
    }
    public BigDecimal getSku_price() {
        return sku_price;
    }
    public void setSku_price(BigDecimal sku_price) {
        this.sku_price = sku_price;
    }
    @Override
    public String toString() {
        return "RefundOrReturnItem{" +
                "id='" + id + '\'' +
                ", return_id='" + return_id + '\'' +
                ", sku_id='" + sku_id + '\'' +
                ", nums=" + nums +
                ", sku_price=" + sku_price +
                '}';
    }
}
