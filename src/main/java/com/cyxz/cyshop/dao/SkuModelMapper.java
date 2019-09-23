package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.SkuModel;

import java.util.List;

public interface SkuModelMapper {

    List<SkuModel> getAllModel();

    int insertModel(SkuModel skuModel);

    String getModelIdByName(String modelName);

    List<SkuModel> getModelByCatalog3Id(String model_id);
}
