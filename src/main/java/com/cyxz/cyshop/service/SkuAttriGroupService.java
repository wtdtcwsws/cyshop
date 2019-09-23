package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuAttriGroupMapper;
import com.cyxz.cyshop.dao.SkuAttriMapper;
import com.cyxz.cyshop.domain.SkuAttriGroup;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * @version 1.0.0
 * @ClassName SkuAttriGroupService
 * @Description sku属性组合业务类
 * @Author Administrator
 * @date 2019/9/199:30
 */
public class SkuAttriGroupService {
    static SqlSession sqlSession = null;
    static SkuAttriGroupMapper skuAttriGroupMapper = null;

    public static SkuAttriGroupMapper getMapper() {
        if (sqlSession == null || skuAttriGroupMapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            SkuAttriGroupMapper skuAttriGroupMapper = sqlSession.getMapper(SkuAttriGroupMapper.class);
            return skuAttriGroupMapper;
        }
        return skuAttriGroupMapper;

    }
    //TODO
    public int insertAttriGroup(SkuAttriGroup skuAttriGroup) {
        int success = getMapper().insertAttriGroup(skuAttriGroup);
        if (success==1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return success;
    }
}
