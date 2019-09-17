package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.RefundOrReturnOrderMapper;
import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.service.RefundOrReturnOrderService;
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
public class RefundOrReturnOrderServiceImpl implements RefundOrReturnOrderService {
    @Override
    public RefundOrReturnOrder selectOne(String id) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        RefundOrReturnOrderMapper refundOrReturnOrderMapper = sqlSession.getMapper(RefundOrReturnOrderMapper.class);
        RefundOrReturnOrder refundOrReturnOrder = refundOrReturnOrderMapper.getRefundOrReturnOrder(id);
        sqlSession.commit();
        return refundOrReturnOrder;
    }

    @Override
    public int updateStatus(RefundOrReturnOrder refundOrReturnOrder) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        RefundOrReturnOrderMapper refundOrReturnOrderMapper = sqlSession.getMapper(RefundOrReturnOrderMapper.class);
        int row = refundOrReturnOrderMapper.updateStatus(refundOrReturnOrder);
        sqlSession.commit();
        return row;
    }
}
