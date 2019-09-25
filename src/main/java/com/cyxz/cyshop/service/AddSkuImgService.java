package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.AddSkuImgMapper;
import com.cyxz.cyshop.domain.SkuImg;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 * @version 1.0.0
 * @ClassName AddSkuImgService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2423:43
 */
public class AddSkuImgService {
    static SqlSession sqlSession = null;
    public static AddSkuImgMapper getMapper() {
         sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        AddSkuImgMapper addSkuImgMapper = sqlSession.getMapper(AddSkuImgMapper.class);
            return addSkuImgMapper;
    }

    /**
     * 通过skuId获取url地址
     * @param skuId
     * @return
     */
    public String getSkuImgUrl(String skuId) {
        String url = getMapper().getSkuImgUrl(skuId);
        sqlSession.close();
        return url;
    }

    /**
     * 通过skuID获取URL地址
     * @param skuId
     * @return
     */
    public SkuImg getSkuImg(String skuId) {
        SkuImg skuImg = getMapper().getSkuImg(skuId);
        return skuImg;
    }

}
