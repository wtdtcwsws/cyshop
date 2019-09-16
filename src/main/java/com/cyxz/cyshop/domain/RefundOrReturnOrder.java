package com.cyxz.cyshop.domain;

import java.io.Serializable;
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
public class RefundOrReturnOrder implements Serializable {
    private String id;
    private String member_id;
    private String spu_name;
    private String order_id;
    private Date creat_time;
    private BigDecimal count;
    private String reason;
    private String status;
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
    public String getSpu_name() {
        return spu_name;
    }
    public void setSpu_name(String spu_name) {
        this.spu_name = spu_name;
    }
    public String getOrder_id() {
        return order_id;
    }
    public void setOrder_id(String order_id) {
        this.order_id = order_id;
    }
    public Date getCreat_time() {
        return creat_time;
    }
    public void setCreat_time(Date creat_time) {
        this.creat_time = creat_time;
    }
    public BigDecimal getCount() {
        return count;
    }
    public void setCount(BigDecimal count) {
        this.count = count;
    }
    public String getReason() {
        return reason;
    }
    public void setReason(String reason) {
        this.reason = reason;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    @Override
    public String toString() {
        return "RefundOrReturnOrder{" +
                "id='" + id + '\'' +
                ", member_id='" + member_id + '\'' +
                ", spu_name='" + spu_name + '\'' +
                ", order_id='" + order_id + '\'' +
                ", creat_time=" + creat_time +
                ", count=" + count +
                ", reason='" + reason + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
