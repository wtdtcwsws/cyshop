package com.cyxz.cyshop.service;


import com.cyxz.cyshop.dao.commentMapper;

import com.cyxz.cyshop.domain.Comment;
import com.cyxz.cyshop.util.MyBatisUtil;

import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @author lz - PC
 * @date 2019/9/16 - 14:12
 */
public class CommentService {

    public Comment getCommentByid(String id){
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        commentMapper commentMapper = sqlSession.getMapper(commentMapper.class);

        Comment comment2 = commentMapper.getcomment(id);
        System.out.println(comment2);

        sqlSession.close();
        return  comment2;
    }

    public List<Comment> getComments(){
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        commentMapper commentMapper = sqlSession.getMapper(commentMapper.class);

        List<Comment> comments = commentMapper.getComments();

        sqlSession.close();
        return  comments;
    }

}
