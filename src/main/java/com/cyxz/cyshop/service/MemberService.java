package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.CommoditySkuMapper;
import com.cyxz.cyshop.dao.orderDetailMapper;
import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.domain.CommoditySku;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.OrderItem;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.orderListView;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;


/**
 * @version 1.0.0
 * @ClassName MemberService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/160:59
 */
public class MemberService {
    public static void main(String[] args) {

        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);
        int order = orderMapper.updateOrder("2");
        System.out.println(order);
        sqlSession.close();

    }


}
