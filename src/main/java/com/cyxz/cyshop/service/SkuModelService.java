package com.cyxz.cyshop.service;

import com.cyxz.cyshop.dao.SkuModelMapper;
import com.cyxz.cyshop.domain.SkuModel;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @version 1.0.0
 * @ClassName SkuModelService
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/1822:31
 */
public class SkuModelService {
    static SqlSession sqlSession = null;
    static SkuModelMapper skuModelMapper = null;

    public static SkuModelMapper getMapper() {
        if (sqlSession == null || skuModelMapper == null) {
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            SkuModelMapper skuModelMapper = sqlSession.getMapper(SkuModelMapper.class);
            return skuModelMapper;
        }
        return skuModelMapper;

    }

    /**
     * 获取所有商品模型
     * @return
     */
    public List<SkuModel> getAllModel() {
        List<SkuModel> skuModels = getMapper().getAllModel();
        sqlSession.close();
        return skuModels;
    }

    /**
     * 添加商品模型
     * @param skuModel
     * @return
     */
    public int insertModel(SkuModel skuModel) {
        int success = getMapper().insertModel(skuModel);
        if (success == 1) {
            sqlSession.commit();
        }
        sqlSession.close();
        return success;
    }

    /**
     * 通过模板名字获得id（重名获得最后一个ID）
     * @param modelName
     * @return
     */
    public String getModelIdByName(String modelName) {
    String modelId = getMapper().getModelIdByName(modelName);
        sqlSession.close();
        return modelId;
    }

    /**
     * 商品添加页面，通过选择三级分类找到对应的模型们
     * @param model_id
     * @return
     */
    public List<SkuModel> getModelByCatalog3Id(String model_id) {
        List<SkuModel> skuModels= getMapper().getModelByCatalog3Id(model_id);
        sqlSession.close();
        return skuModels;
    }
}
