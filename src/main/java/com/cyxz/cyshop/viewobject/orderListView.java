package com.cyxz.cyshop.viewobject;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/1711:08
 * @place 西部国际金融中心
 */
public class orderListView {
    String sku;//商品
    String price;//单价
    String num;//购买数量
    String status;//订单状态
    String orderId;//订单号

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "orderListView{" +
                "sku='" + sku + '\'' +
                ", price='" + price + '\'' +
                ", num='" + num + '\'' +
                ", status='" + status + '\'' +
                '}';
    }
}
