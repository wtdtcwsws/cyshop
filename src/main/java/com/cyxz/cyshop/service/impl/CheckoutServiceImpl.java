package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.AddressMapper;
import com.cyxz.cyshop.dao.CreateOrderMapper;
import com.cyxz.cyshop.domain.MemberAddress;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.OrderItem;
import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.service.CheckoutService;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.ConfirmOrderVO;
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
public class CheckoutServiceImpl implements CheckoutService {
    /**
     * 通过用户的id查找用户的所有收获地址
     * @param id
     * @return
     */
    @Override
    public List<MemberAddress> findAderessByMemberId(String id) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
        List<MemberAddress> memberAddressess = addressMapper.fingAllByMemberId(id);
        sqlSession.commit();
        sqlSession.close();
        return memberAddressess;
    }

    /**
     * 向数据库地址表新增地址
     * @param memberAddress
     * @return
     */
    @Override
    public int addAddress(MemberAddress memberAddress) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
        int valid = addressMapper.aAddress(memberAddress);
        sqlSession.commit();
        sqlSession.close();
        return valid;
    }

    /**
     * 修改数据库地址表信息
     * @param memberAddress
     * @return
     */
    @Override
    public int updateAddress(MemberAddress memberAddress) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        AddressMapper addressMapper = sqlSession.getMapper(AddressMapper.class);
        int valid = addressMapper.uAddress(memberAddress);
        sqlSession.commit();
        sqlSession.close();
        return valid;
    }

    /**
     * 向数据库订单表创建订单
     * @param order
     * @return
     */
    @Override
    public int insertOrder(Order order) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        CreateOrderMapper createOrderMapper = sqlSession.getMapper(CreateOrderMapper.class);
        int insertOrderValid = createOrderMapper.insertOrder(order);
        sqlSession.commit();
        sqlSession.close();
        return insertOrderValid;
    }

    /**
     * 向数据库订单列表新增订单信息
     * @param orderItem
     * @return
     */
    @Override
    public int insertOrderItem(OrderItem orderItem) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        CreateOrderMapper createOrderMapper = sqlSession.getMapper(CreateOrderMapper.class);
        int insertOrderItemValid = createOrderMapper.insertOrderItem(orderItem);
        sqlSession.commit();
        sqlSession.close();
        return insertOrderItemValid;
    }
}
