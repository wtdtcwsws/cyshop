package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuAttriValueMapper;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

public class SkuAttriValueService {
    static SqlSession sqlSession = null;
    static SkuAttriValueMapper skuAttriValueMapper = null;

    public static SkuAttriValueMapper getMapper() {
        if (sqlSession == null || skuAttriValueMapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            SkuAttriValueMapper  skuAttriValueMapper = sqlSession.getMapper(SkuAttriValueMapper.class);
            return skuAttriValueMapper;
        }
        return skuAttriValueMapper;

    }
    //TODO SkuAttriValueMapper
    public String getSkuAttriValueIdByName(String value) {
        String id = getMapper().getSkuAttriValueIdByName(value);
        sqlSession.close();
        return id;
    }
    //TODO
    public String getSkuAttriValueAttriIdByName(String value) {
        String valueId = getMapper().getSkuAttriValueAttriIdByName(value);
        sqlSession.close();
        return valueId;
    }
    //TODO
    public int insertAttriValue(String value,String attriId ) {
        int success = getMapper().insertAttriValue(value, attriId);
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return success;
    }
}
