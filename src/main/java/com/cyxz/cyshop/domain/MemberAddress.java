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
public class MemberAddress implements Serializable {
    private String id;
    private String member_id;
    private String specific_address;
    private String consignee_name;
    private String phone;
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
    public String getSpecific_address() {
        return specific_address;
    }
    public void setSpecific_address(String specific_address) {
        this.specific_address = specific_address;
    }
    public String getConsignee_name() {
        return consignee_name;
    }
    public void setConsignee_name(String consignee_name) {
        this.consignee_name = consignee_name;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    @Override
    public String toString() {
        return "MemberAddress{" +
                "id='" + id + '\'' +
                ", member_id='" + member_id + '\'' +
                ", specific_address='" + specific_address + '\'' +
                ", consignee_name='" + consignee_name + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
