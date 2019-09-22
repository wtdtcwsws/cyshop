package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.OrderItem;

public interface AddOrderMapper {
    int addOrder(Order order);

    int addOrderItem(OrderItem orderItem);
}
