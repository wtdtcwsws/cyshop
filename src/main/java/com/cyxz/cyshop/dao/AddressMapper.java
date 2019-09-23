package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.MemberAddress;

import java.util.List;

public interface AddressMapper {
    List<MemberAddress> fingAllByMemberId(String id);
    int aAddress(MemberAddress memberAddress);
    MemberAddress findById(String member_address_id);
    int uAddress(MemberAddress memberAddress);
}
