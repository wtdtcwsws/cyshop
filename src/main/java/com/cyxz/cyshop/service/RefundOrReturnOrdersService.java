package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.RefundOrReturnOrderMapper;
import com.cyxz.cyshop.dao.SkuMapper;
import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * 罗海
 */
public class RefundOrReturnOrdersService {

//添加库存订单的方法
    public Integer Add(RefundOrReturnOrder refundOrReturnOrder){

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        RefundOrReturnOrderMapper refundOrReturnOrderMapper = sqlSession.getMapper(RefundOrReturnOrderMapper.class);

        Integer num = refundOrReturnOrderMapper.AddRefundOrReturnOrder(refundOrReturnOrder);

        if(num > 0){
            sqlSession.commit();
        }

        sqlSession.close();

        return num;
    }

}
