package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Member;

import java.util.List;

public interface MemberMapper {
    // 获取member的所有信息
    List<Member> getMember();

    // 插入数据到member
    int getInsertMember(Member member);

    // 根据id删除member的信息
    int getDeleteMember(int id);

}
