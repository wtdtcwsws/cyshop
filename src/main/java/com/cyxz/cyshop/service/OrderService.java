package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.AddGoodsMapper;
import com.cyxz.cyshop.dao.AddOrderMapper;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.OrderItem;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import static com.cyxz.cyshop.service.CatalogService.catalog1Mapper;

/**
 * @version 1.0.0
 * @ClassName OrderService
 * @Description 订单服务类
 * @Author Administrator
 * @date 2019/9/2223:36
 */
public class OrderService {
    static SqlSession sqlSession = null;
    static AddOrderMapper addOrderMapper = null;

    public static AddOrderMapper getMapper() {
        if (sqlSession == null || addOrderMapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            AddOrderMapper addOrderMapper = sqlSession.getMapper(AddOrderMapper.class);
            return addOrderMapper;
        }
        return addOrderMapper;

    }
    public boolean creatOrder(String skuId, String count) {



        return false;
    }

    public int insertOrder(Order order) {
        int success = getMapper().addOrder(order);
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return success;
    }

    public int insertOrderItem(OrderItem orderItemer) {
        int success = getMapper().addOrderItem(orderItemer);
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return success;
    }
}
