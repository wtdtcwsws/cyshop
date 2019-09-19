package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuMapper;
import com.cyxz.cyshop.domain.CommoditySku;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class SkuService {

    public List<CommoditySku> selectSku(){

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        SkuMapper skuMapper = sqlSession.getMapper(SkuMapper.class);
        List<CommoditySku> commoditySku = skuMapper.getSku();
        sqlSession.close();
        return commoditySku;

    }

    public Integer updateStock(Integer stock,Integer id){
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        SkuMapper skuMapper = sqlSession.getMapper(SkuMapper.class);

        Integer number = skuMapper.setSkuStock(stock,id);

        if(number > 0){
            sqlSession.commit();
        }
        sqlSession.close();
        return number;
    }




//    public static void main(String[] args){
//        SkuService skuServices = new SkuService();
//
//        List<CommoditySku> commoditySkus = skuServices.selectSku();
//
//        for (CommoditySku i : commoditySkus){
//            System.out.println(i);
//        }
//
//    }

}
