package com.cyxz.cyshop.dao;


import com.cyxz.cyshop.domain.Comment;

import java.util.List;

/**
 * @author lz - PC
 * @date 2019/9/16 - 12:34
 */
public interface commentMapper {

    Comment getcomment(String id);
    List<Comment> getComments();






}
