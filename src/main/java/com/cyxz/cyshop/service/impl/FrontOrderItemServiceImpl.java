package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.FrontOrderItemMapper;
import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.service.FrontOrderItemService;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.OrderItemVO;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class FrontOrderItemServiceImpl implements FrontOrderItemService {

    @Override
    public List<OrderItemVO> findAllOrder(String member_id) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        FrontOrderItemMapper frontOrderItemMapper = sqlSession.getMapper(FrontOrderItemMapper.class);
        List<OrderItemVO> orderItemVOs = frontOrderItemMapper.findAllOrder(member_id);
        sqlSession.commit();
        sqlSession.close();
        return orderItemVOs;
    }

    @Override
    public int deleteOrder(String orderId) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        FrontOrderItemMapper frontOrderItemMapper = sqlSession.getMapper(FrontOrderItemMapper.class);
        int deleteItemOrder = frontOrderItemMapper.deleteItemOrder(orderId);
//        if (deleteItemOrder>0){
            int deleteOrederValid = frontOrderItemMapper.deleteOrder(orderId);
            sqlSession.commit();
            sqlSession.close();
            return deleteOrederValid;
//        }
//        return 0;
    }
}
