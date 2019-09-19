package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Member;

import java.util.List;

public interface MemberMapper {
    // 获取member的所有信息
    List<Member> getMember();

    // 插入数据到member
    Integer getInsertMember(Member member);

}
