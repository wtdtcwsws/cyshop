package com.cyxz.cyshop.service;

import com.cyxz.cyshop.domain.MemberAddress;

import java.util.List;

public interface CheckoutService {
    List<MemberAddress> findAderessByMemberId(String id);
    int addAddress(MemberAddress memberAddress);
}
