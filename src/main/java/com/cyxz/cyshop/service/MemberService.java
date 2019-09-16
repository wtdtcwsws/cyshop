package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.MemberMapper;
import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;


/**
 * @version 1.0.0
 * @ClassName MemberService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/160:59
 */
public class MemberService {
    public static void main(String[] args) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        MemberMapper MemberMapper = sqlSession.getMapper(MemberMapper.class);

        Member member = MemberMapper.getMember(1);
        Member member2 = MemberMapper.getMember(2);
        String phone = MemberMapper.getMemberId(1);
        System.out.println(member);
        System.out.println(member2);
        System.out.println(phone);
        sqlSession.close();

    }


}
