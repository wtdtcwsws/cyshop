package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.CommoditySku;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/1714:29
 * @place 西部国际金融中心
 */
public interface CommoditySkuMapper {
    CommoditySku findBySkuId(String sku_id);
}
