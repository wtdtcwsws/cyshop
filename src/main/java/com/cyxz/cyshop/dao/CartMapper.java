package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.CartDomain;
import com.cyxz.cyshop.domain.ShoppingCartItem;

import java.util.List;

/**
 * 罗海
 */
public interface CartMapper {

    // 通过用户id查找购物车信息
    List<CartDomain> selectAllToMemberId (String memberId);

    // 通过购物车id删除购物车信息
    Integer deleteCartById(String CartId);

    int addCartItem(ShoppingCartItem shoppingCartItem);

}
