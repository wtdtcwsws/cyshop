package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Sku;

import java.util.List;

public interface SkuMapper {

    List<Sku> getSku();

    Integer setSkuStock(Sku sku);
    Sku findBySkuId(String sku_id);
    Integer setSkuStock(Integer stock,Integer id);

}
