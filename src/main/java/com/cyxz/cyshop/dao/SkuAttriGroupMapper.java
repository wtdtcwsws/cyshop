package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.SkuAttriGroup;

import java.util.List;

/**
 * sku属性搭配映射接口
 */
public interface SkuAttriGroupMapper {

    List<SkuAttriGroup> getAllSkuAttriGroup();

    List<SkuAttriGroup> getSkuAttriGroupByModelId(String modelId);

    int insertAttriGroup(SkuAttriGroup skuAttriGroup);
}
