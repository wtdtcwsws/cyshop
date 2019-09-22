package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.OrderItem;

public interface CreateOrderMapper {
    int insertOrder(Order order);
    int insertOrderItem(OrderItem orderItem);
}
