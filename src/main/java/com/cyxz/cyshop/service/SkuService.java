package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuMapper;
import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class SkuService {

    public List<Sku> selectSku(){

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        SkuMapper skuMapper = sqlSession.getMapper(SkuMapper.class);
        List<Sku> commoditySku = skuMapper.getSku();
        sqlSession.close();
        return commoditySku;

    }

    public Integer updateStock(Sku sku){
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        SkuMapper skuMapper = sqlSession.getMapper(SkuMapper.class);

        Integer number = skuMapper.setSkuStock(sku);

        if(number > 0){
            sqlSession.commit();
        }
        sqlSession.close();

        return number;
    }

}
