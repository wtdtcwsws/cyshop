package com.cyxz.cyshop.viewobject;

import java.math.BigDecimal;
import java.util.Date;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class OrderItemVO {
    private String spu_name;
    private Date creat_time;
    private BigDecimal payment;
    private String status;

    public String getSpu_name() {
        return spu_name;
    }

    public void setSpu_name(String spu_name) {
        this.spu_name = spu_name;
    }

    public Date getCreat_time() {
        return creat_time;
    }

    public void setCreat_time(Date creat_time) {
        this.creat_time = creat_time;
    }

    public BigDecimal getPayment() {
        return payment;
    }

    public void setPayment(BigDecimal payment) {
        this.payment = payment;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "OrderItemVO{" +
                "spu_name='" + spu_name + '\'' +
                ", creat_time=" + creat_time +
                ", payment=" + payment +
                ", status='" + status + '\'' +
                '}';
    }
}
