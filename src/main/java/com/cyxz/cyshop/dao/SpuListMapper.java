package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Spu;

import java.util.List;

public interface SpuListMapper {
    List<Spu> getAllSpu();

    Spu getSpuById(String spuId);
}
