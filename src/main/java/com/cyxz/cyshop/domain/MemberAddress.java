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
    private String province;
    private String city;
    private String district;
    private String specific_address;
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
    public String getProvince() {
        return province;
    }
    public void setProvince(String province) {
        this.province = province;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public String getDistrict() {
        return district;
    }
    public void setDistrict(String district) {
        this.district = district;
    }
    public String getSpecific_address() {
        return specific_address;
    }
    public void setSpecific_address(String specific_address) {
        this.specific_address = specific_address;
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
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", district='" + district + '\'' +
                ", specific_address='" + specific_address + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
