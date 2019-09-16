package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Member;

public interface MemberMapper {

    Member getMember(Integer id);

    String getMemberId(int id);

}
