package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Order;

import java.util.List;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/1615:12
 * @place 西部国际金融中心
 */
public interface orderMapper {
    List<Order> getOrderByMemberId(String memberId);
    List<Order> selectAll();
    int updateOrder(String id);
}
