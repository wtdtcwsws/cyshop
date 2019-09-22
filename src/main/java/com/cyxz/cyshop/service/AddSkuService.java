package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.AddGoodsMapper;
import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

import static com.cyxz.cyshop.service.CatalogService.catalog1Mapper;

/**
 * @version 1.0.0
 * @ClassName AddSkuService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2012:08
 */
public class AddSkuService {
    static SqlSession sqlSession = null;
    static AddGoodsMapper addGoodsMapper = null;

    public static AddGoodsMapper getMapper() {
        if (sqlSession == null || catalog1Mapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            AddGoodsMapper addGoodsMapper = sqlSession.getMapper(AddGoodsMapper.class);
            return addGoodsMapper;
        }
        return addGoodsMapper;

    }

    /**
     * 根据模型id找到所有的属性名
     * @param model_id
     * @return
     */
    public List<String> getAttri(String model_id) {
        AddGoodsMapper addGoodsMapper = getMapper();
        List<String> attris = addGoodsMapper.getAttri(model_id);
        sqlSession.close();
        return attris;
    }
    /**
     * 根据模型id与属性名找到所有对应该属性名的属性值
     * @param model_id
     * @param name
     * @return
     */
    public List<String> getValue(String model_id, String name) {
        AddGoodsMapper addGoodsMapper = getMapper();
        List<String> values = addGoodsMapper.getValue(model_id, name);
        sqlSession.close();
        return values;
    }

    /**
     * 商品添加界面中，添加商品到spu数据库
     * @param spu
     * @return
     */
    public String insertSpu(Spu spu) {
        AddGoodsMapper addGoodsMapper = getMapper();
        int success = addGoodsMapper.insertSpu(spu);
        String id =  spu.getId();
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return id;
    }

    /**
     * 添加sku到数据库
     * @param sku
     * @return
     */
    public int insertSku(Sku sku) {
        AddGoodsMapper addGoodsMapper = getMapper();
        int success = addGoodsMapper.insertSku(sku);
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return success;
    }

    /**
     * 获取所有sku
     * @return
     */
    public List<Sku> selectSkus() {
        List<Sku> skus = getMapper().getAllSkus();
        sqlSession.close();
        return skus;
    }

    /**
     * 通过spuid获取skus
     * @param spuId
     * @return
     */
    public List<Sku> getSkusBySpuId(String spuId) {
        List<Sku> skus = getMapper().getSkusBySpuId(spuId);
        sqlSession.close();
        return skus;
    }

    /**
     * 通过skuId找到sku
     * @param skuId
     * @return
     */
    public Sku getSkuById(String skuId) {
        Sku sku = getMapper().getSkuById(skuId);
        sqlSession.close();
        return sku;
    }

    public int subtractStock(String count,String skuId) {
        int success = getMapper().subtractStock(count,skuId);
        if (success == 1) {
            sqlSession.commit();
            System.out.println("修改库存");
        }
        sqlSession.close();

        return success;
    }
}
