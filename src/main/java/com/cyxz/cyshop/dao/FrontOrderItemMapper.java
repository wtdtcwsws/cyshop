package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.viewobject.OrderItemVO;

import java.util.List;

public interface FrontOrderItemMapper {
    List<OrderItemVO> findAllOrder(String member_id);

    int deleteOrder(String orderId);

    int deleteItemOrder(String orderId);
}
