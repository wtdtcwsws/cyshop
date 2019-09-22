package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuAttriMapper;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * @version 1.0.0
 * @ClassName SkuAttriService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/1911:44
 */
public class SkuAttriService {
    static SqlSession sqlSession = null;
    static SkuAttriMapper skuAttriMapper = null;

    public static SkuAttriMapper getMapper() {
        if (sqlSession == null || skuAttriMapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            SkuAttriMapper skuAttriMapper = sqlSession.getMapper(SkuAttriMapper.class);
            return skuAttriMapper;
        }
        return skuAttriMapper;

    }
    //TODO

    /**
     * 通过属性值名获得id
     * @param attri
     * @return
     */
    public String getSkuAttriIdByName(String attri) {
        String attriId = getMapper().getSkuAttriIdByName(attri);
        sqlSession.close();
        return attriId;
    }
    //TODO

    public int insertAttri(String attri) {
        int success = getMapper().insertAttri(attri);
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return -1;
    }

}
