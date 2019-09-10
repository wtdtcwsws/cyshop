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
public class Member implements Serializable {
    private String id;
    private String level_id;
    private String account;
    private String password;
    private String name;
    private String status;
    private String phone;
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getLevel_id() {
        return level_id;
    }
    public void setLevel_id(String level_id) {
        this.level_id = level_id;
    }
    public String getAccount() {
        return account;
    }
    public void setAccount(String account) {
        this.account = account;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    @Override
    public String toString() {
        return "Member{" +
                "id='" + id + '\'' +
                ", level_id='" + level_id + '\'' +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", status='" + status + '\'' +
                ", phone='" + phone + '\'' +
                '}';
    }
}
