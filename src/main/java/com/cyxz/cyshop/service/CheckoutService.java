package com.cyxz.cyshop.service;

import com.cyxz.cyshop.domain.MemberAddress;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.OrderItem;

import java.util.List;

public interface CheckoutService {
    List<MemberAddress> findAderessByMemberId(String id);
    int addAddress(MemberAddress memberAddress);
    int updateAddress(MemberAddress memberAddress);
    int insertOrder(Order order);
    int insertOrderItem(OrderItem orderItem);
}
