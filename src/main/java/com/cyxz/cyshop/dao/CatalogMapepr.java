package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.Catalog1;
import com.cyxz.cyshop.domain.Catalog2;
import com.cyxz.cyshop.domain.Catalog3;

import java.util.List;

public interface CatalogMapepr {
    List<Catalog1>  getCatalog1s();
    List<Catalog2>  getCatalog2s();
    List<Catalog3>  getCatalog3s();

    int insertCatalog1(Catalog1 catalog1);
    int insertCatalog2(Catalog2 catalog2);
    int insertCatalog3(Catalog3 catalog3);

    int deleteCatalog1(String id);
    int deleteCatalog2(String id);
    int deleteCatalog3(String id);

    Catalog3 getCatalog3ById(String catalog3Id);
}
