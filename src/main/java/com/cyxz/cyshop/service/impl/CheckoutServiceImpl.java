package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.AddressMapper;
import com.cyxz.cyshop.domain.MemberAddress;
import com.cyxz.cyshop.service.CheckoutService;
import com.cyxz.cyshop.util.MyBatisUtil;
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
}
