package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.SkuImg;

public interface AddSkuImgMapper {

    String getSkuImgUrl(String skuId);

    SkuImg getSkuImg(String skuId);
}
