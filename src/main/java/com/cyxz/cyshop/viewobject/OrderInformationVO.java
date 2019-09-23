package com.cyxz.cyshop.viewobject;

import java.io.Serializable;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/20
 * @time15:28
 * @place 西部国际金融中心
 * 用来演示订单详情中的商品详情的类
 */
public class OrderInformationVO implements Serializable {
   private String name;
    private String model;
    private String num;
    private String price;
    private String total;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }
}
