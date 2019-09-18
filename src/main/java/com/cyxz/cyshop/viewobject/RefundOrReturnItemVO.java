package com.cyxz.cyshop.viewobject;

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
public class RefundOrReturnItemVO implements Serializable {
    private String id;
    private String orderId;
    private String spuName;
    private Integer nums;
    private BigDecimal count;
    private String memberName;
    private Date creatTime;
    private String reason;
    private String status;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getSpuName() {
        return spuName;
    }

    public void setSpuName(String spuName) {
        this.spuName = spuName;
    }

    public Integer getNums() {
        return nums;
    }

    public void setNums(Integer nums) {
        this.nums = nums;
    }

    public BigDecimal getCount() {
        return count;
    }

    public void setCount(BigDecimal count) {
        this.count = count;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public Date getCreatTime() {
        return creatTime;
    }

    public void setCreatTime(Date creatTime) {
        this.creatTime = creatTime;
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
        return "RefundOrReturnItemVO{" +
                "id='" + id + '\'' +
                ", orderId='" + orderId + '\'' +
                ", spuName='" + spuName + '\'' +
                ", nums=" + nums +
                ", count=" + count +
                ", memberName='" + memberName + '\'' +
                ", creatTime=" + creatTime +
                ", reason='" + reason + '\'' +
                ", status=" + status +
                '}';
    }
}
