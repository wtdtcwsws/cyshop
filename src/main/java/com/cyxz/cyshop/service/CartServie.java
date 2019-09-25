package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.CartMapper;
import com.cyxz.cyshop.domain.CartDomain;
import com.cyxz.cyshop.domain.ShoppingCartItem;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

/**
 * 罗海
 */
public class CartServie {

    public List<CartDomain> selectCartById(String memberId){
        List<CartDomain> cartDomains = new ArrayList<CartDomain>();
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
        cartDomains = cartMapper.selectAllToMemberId(memberId);

        sqlSession.close();

        return cartDomains;
    }

    public Integer deleteCartByID(String id){

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
        Integer num = cartMapper.deleteCartById(id);
        if(num > 0){
            sqlSession.commit();
        }
        sqlSession.close();
        return  num;
    }

    public int addCartItem(ShoppingCartItem shoppingCartItem) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        CartMapper cartMapper = sqlSession.getMapper(CartMapper.class);
        Integer success = cartMapper.addCartItem(shoppingCartItem);
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return success;
    }
}
