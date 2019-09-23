package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.PaymentMapper;
import com.cyxz.cyshop.service.PaymentService;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class PaymentServiceImpl implements PaymentService {
    /**
     * 修改付款后的订单状态
     * @return
     */
    @Override
    public int updateOrderStatus() {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        PaymentMapper paymentMapper = sqlSession.getMapper(PaymentMapper.class);
        //  第一步，查询出新增的订单id
        String id = paymentMapper.findNewOrderforId();
        //  第二步，根据id修改订单状态
        int row = paymentMapper.updateOrderStatus(id);
        sqlSession.commit();
        sqlSession.close();
        return row;
    }
}
