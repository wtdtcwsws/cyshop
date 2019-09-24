package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.SkuImg;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/24
 * @time18:45
 * @place 西部国际金融中心
 */
public interface SkuImageMapper {
    SkuImg findUrlBySkuId(String sku_id);
}
