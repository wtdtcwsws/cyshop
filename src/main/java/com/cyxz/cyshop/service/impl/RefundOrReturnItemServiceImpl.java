package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.RefundOrReturnItemMapper;
import com.cyxz.cyshop.domain.RefundOrReturnItem;
import com.cyxz.cyshop.service.RefundOrReturnItemService;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class RefundOrReturnItemServiceImpl implements RefundOrReturnItemService {
    @Override
    public List<RefundOrReturnItem> findReturnIdList() {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        RefundOrReturnItemMapper refundOrReturnItemMapper = sqlSession.getMapper(RefundOrReturnItemMapper.class);
        List<RefundOrReturnItem> refundOrReturnItemReturnIds = refundOrReturnItemMapper.foundALL();
        sqlSession.commit();
        return refundOrReturnItemReturnIds;
    }

    @Override
    public RefundOrReturnItem findRefundOrReturnItem(String return_id) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();

        RefundOrReturnItemMapper refundOrReturnItemMapper = sqlSession.getMapper(RefundOrReturnItemMapper.class);
        RefundOrReturnItem refundOrReturnItem = refundOrReturnItemMapper.findRefundOrReturnItem(return_id);
        sqlSession.commit();
        return refundOrReturnItem;
    }
}
