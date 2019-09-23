package com.cyxz.cyshop.domain;

import java.io.Serializable;

/**
 * @version 1.0.0
 * @ClassName SkuAttriGroup
 * @Description 模型属性组合
 * @Author Administrator
 * @date 2019/9/1816:40
 */
public class SkuAttriGroup implements Serializable {
    private String id;
    private String attri_id;
    private String attri_value_id;
    private String model_id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAttri_id() {
        return attri_id;
    }

    public void setAttri_id(String attri_id) {
        this.attri_id = attri_id;
    }

    public String getAttri_value_id() {
        return attri_value_id;
    }

    public void setAttri_value_id(String attri_value_id) {
        this.attri_value_id = attri_value_id;
    }

    public String getModel_id() {
        return model_id;
    }

    public void setModel_id(String model_id) {
        this.model_id = model_id;
    }

    @Override
    public String toString() {
        return "SkuAttriGroup{" +
                "id='" + id + '\'' +
                ", attri_id='" + attri_id + '\'' +
                ", attri_value_id='" + attri_value_id + '\'' +
                ", model_id='" + model_id + '\'' +
                '}';
    }
}
