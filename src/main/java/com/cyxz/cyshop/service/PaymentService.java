package com.cyxz.cyshop.service;

public interface PaymentService {
    /**
     * 付款后修改订单状态
     * @return
     */
    int updateOrderStatus();
}
