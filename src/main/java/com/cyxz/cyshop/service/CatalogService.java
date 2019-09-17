package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.CatalogMapepr;
import com.cyxz.cyshop.domain.Catalog1;
import com.cyxz.cyshop.domain.Catalog2;
import com.cyxz.cyshop.domain.Catalog3;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName CatalogService
 * @Description 商品分类业务层上
 * @Author Administrator
 * @date 2019/9/1610:32
 */
public class CatalogService {
    static SqlSession sqlSession = null;
    static CatalogMapepr catalog1Mapper = null;

    public static CatalogMapepr getMapper() {
        if (sqlSession == null || catalog1Mapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            CatalogMapepr catalog1Mapper = sqlSession.getMapper(CatalogMapepr.class);
            return catalog1Mapper;
        }
        return catalog1Mapper;

    }

    public List<Catalog1> getCatalog1s() {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        List<Catalog1> catalog1s = catalog1Mapper.getCatalog1s();
        sqlSession.close();
        return catalog1s;
    }

    public List<Catalog2> getCatalog2s() {

        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        List<Catalog2> catalog2s = catalog1Mapper.getCatalog2s();
        sqlSession.close();
        return catalog2s;
    }

    public List<Catalog3> getCatalog3s() {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        List<Catalog3> catalog3s = catalog1Mapper.getCatalog3s();
        sqlSession.close();
        return catalog3s;
    }

    public void insertCatalog1(Catalog1 catalog1) {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        int success = catalog1Mapper.insertCatalog1(catalog1);
        if (success == 1) {
            sqlSession.commit();
            System.out.println("添加成功！");

        } else {
            System.out.println("添加失败！");
        }
        sqlSession.close();
    }

    public void insertCatalog2(Catalog2 catalog2) {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        int success = catalog1Mapper.insertCatalog2(catalog2);
        if (success == 1) {
            sqlSession.commit();
            System.out.println("添加成功！");

        } else {
            System.out.println("添加失败！");
        }
        sqlSession.close();
    }

    public void insertCatalog3(Catalog3 catalog3) {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        int success = catalog1Mapper.insertCatalog3(catalog3);
        if (success == 1) {
            sqlSession.commit();
            System.out.println("添加成功！");

        } else {
            System.out.println("添加失败！");
        }
        sqlSession.close();
    }

    /**
     * 按一级分类id找到对应的二级分类集合
     * @param catalog1Id
     * @return
     */
    public List<Catalog2> getCatalog2s(String catalog1Id) {
        List<Catalog2> catalog2s = getCatalog2s();
        List<Catalog2> subCatalog2s = new ArrayList<>();

        for (Catalog2 c2 : catalog2s) {
            if (c2.getCatalog_1_id().equals(catalog1Id)) {
                subCatalog2s.add(c2);
            }
        }
        return subCatalog2s;
    }

    /**
     * 按id删除一级分类
     * @param id
     */
    public void deleteCatalog1(String id) {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        int success = catalog1Mapper.deleteCatalog1(id);
        if (success == 1) {
            sqlSession.commit();
            System.out.println("删除成功！");

        } else {
            System.out.println("删除失败！");
        }
        sqlSession.close();
    }

    /**
     * 按id删除二级分类
     * @param id
     */
    public void deleteCatalog2(String id) {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        int success = catalog1Mapper.deleteCatalog2(id);
        if (success == 1) {
            sqlSession.commit();
            System.out.println("删除成功！");

        } else {
            System.out.println("删除失败！");
        }
        sqlSession.close();
    }

    /**
     * 按id删除三级分类
     * @param id
     */
    public void deleteCatalog3(String id) {
        CatalogMapepr catalog1Mapper = CatalogService.getMapper();
        int success = catalog1Mapper.deleteCatalog3(id);
        if (success == 1) {
            sqlSession.commit();
            System.out.println("删除成功！");

        } else {
            System.out.println("删除失败！");
        }
        sqlSession.close();
    }
}
