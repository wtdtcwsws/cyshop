package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuModelMapper;
import com.cyxz.cyshop.dao.SpuListMapper;
import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @version 1.0.0
 * @ClassName SpuListService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2122:49
 */
public class SpuListService {

    static SqlSession sqlSession = null;
    static SpuListMapper spuListMapper = null;

    public static SpuListMapper getMapper() {
        if (sqlSession == null || spuListMapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            SpuListMapper spuListMapper = sqlSession.getMapper(SpuListMapper.class);
            return spuListMapper;
        }
        return spuListMapper;

    }
    /**
     * 获取所有商品spu
     * @return
     */
    public List<Spu> getAllSpu() {
        List<Spu> spus = getMapper().getAllSpu();
        sqlSession.close();
        return spus;
    }
    public Spu getSpuById(String spu_id) {
        Spu spu = getMapper().getSpuById(spu_id);
        sqlSession.close();
        return spu;
    }
}
