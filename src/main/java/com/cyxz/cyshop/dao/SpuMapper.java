package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Spu;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/20
 * @time14:27
 * @place 西部国际金融中心
 */
public interface SpuMapper {
    Spu findById(String id);//使用id查找
}
