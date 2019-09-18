package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuMapper;
import com.cyxz.cyshop.domain.CommoditySku;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class SkuService {

    public static List<CommoditySku> selectSku(){

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();

        SkuMapper skuMapper = sqlSession.getMapper(SkuMapper.class);

        List<CommoditySku> commoditySku = skuMapper.getSku();

        sqlSession.close();

        return commoditySku;
    }


}
