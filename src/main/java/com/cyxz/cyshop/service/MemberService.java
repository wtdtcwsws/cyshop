package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.MemberMapper;
import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;


/**
 * @version 1.0.0
 * @ClassName MemberService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/160:59
 */
public class MemberService {

    // 获取所有member的方法
    public List<Member> selectMember() {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);
        List<Member> allMember = memberMapper.getMember();
        sqlSession.close();
        return allMember;
    }

    // 插入数据到member的方法
    public Integer insertMember(Member member) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        MemberMapper memberMapper = sqlSession.getMapper(MemberMapper.class);

        Integer num = memberMapper.getInsertMember(member);

        if(num > 0){
            sqlSession.commit();
        }

        sqlSession.close();

        return num;
    }
}
