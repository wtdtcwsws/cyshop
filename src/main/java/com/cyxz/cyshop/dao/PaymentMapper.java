package com.cyxz.cyshop.dao;

public interface PaymentMapper {
    String findNewOrderforId();
    int updateOrderStatus(String id);
}
