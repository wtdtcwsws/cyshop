package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.OrderItem;
import java.util.List;


/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/1710:00
 * @place 西部国际金融中心
 */
public interface orderDetailMapper {
    List<OrderItem> findByOderID(String order_id);
}
