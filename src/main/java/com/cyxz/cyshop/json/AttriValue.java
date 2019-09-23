package com.cyxz.cyshop.json;

/**
 * @version 1.0.0
 * @ClassName AttriValue
 * @Description 模板添加json数据对象
 * @Author Administrator
 * @date 2019/9/1822:13
 */
public class AttriValue {
    private String attri;
    private String value;

    public String getAttri() {
        return attri;
    }

    public void setAttri(String attri) {
        this.attri = attri;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public String toString() {
        return "AttriValue{" +
                "attri='" + attri + '\'' +
                ", value='" + value + '\'' +
                '}';
    }
}
