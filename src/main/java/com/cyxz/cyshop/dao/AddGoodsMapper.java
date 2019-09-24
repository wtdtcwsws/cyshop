package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.domain.SkuImg;
import com.cyxz.cyshop.domain.Spu;

import java.util.List;

/**
 * 商品添加mapper
 */
public interface AddGoodsMapper {
    /**
     * 获取同一属性的属性值集合
     * @param model_id
     * @param name
     * @return
     */
    List<String> getValue(String model_id, String name);

    List<String> getAttri(String model_id);

    int insertSpu(Spu spu);

    /**
     * 插入一条sku
     * @return
     */
    int insertSku(Sku sku);

    /**
     * 获取所有sku
     * @return
     */
    List<Sku> getAllSkus();

    /**
     * 通过spuid获取skus
     * @param spuId
     * @return
     */
    List<Sku> getSkusBySpuId(String spuId);

    Sku getSkuById(String skuId);

    int subtractStock(String count,String skuId);

    int insertSkuImg(SkuImg skuImg);
}
