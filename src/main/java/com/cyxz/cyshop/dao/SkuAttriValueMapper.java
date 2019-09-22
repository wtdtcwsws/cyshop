package com.cyxz.cyshop.dao;

public interface SkuAttriValueMapper {



    String getSkuAttriValueIdByName(String name);

    String getSkuAttriValueAttriIdByName(String value);

    int insertAttriValue(String value, String attriId);
}