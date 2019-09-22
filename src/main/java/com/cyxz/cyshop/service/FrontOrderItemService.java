package com.cyxz.cyshop.service;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.viewobject.OrderItemVO;

import java.util.List;

public interface FrontOrderItemService {
    /**
     * 根据用户id找订单
     * @param member_id
     * @return
     */
    List<OrderItemVO> findAllOrder(String member_id);
}
