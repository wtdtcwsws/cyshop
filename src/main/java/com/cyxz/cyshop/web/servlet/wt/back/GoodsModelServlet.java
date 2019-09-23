package com.cyxz.cyshop.web.servlet.wt.back;


import com.cyxz.cyshop.domain.SkuAttriGroup;
import com.cyxz.cyshop.domain.SkuModel;
import com.cyxz.cyshop.json.AttriValue;
import com.cyxz.cyshop.service.*;
import com.cyxz.cyshop.web.servlet.BaseServlet;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


/**
 * @version 1.0.0
 * @ClassName GoodsModelServlet
 * @Description 用来执行商品模板相关操作
 * @Author Administrator
 * @date 2019/9/1721:17
 */
@WebServlet("/goodsModel")
public class GoodsModelServlet extends BaseServlet {
    private SkuModelService skuModelService = new SkuModelService();
    private SkuAttriService skuAttriService = new SkuAttriService();
    private SkuAttriValueService skuAttriValueService = new SkuAttriValueService();
    private SkuAttriGroupService skuAttriGroupService = new SkuAttriGroupService();

    public void addModel(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String modelName = request.getParameter("modelName");
        String catalog3 = request.getParameter("catalog3");
        String model_id = null;
        SkuModel model = new SkuModel();
        model.setName(modelName);
        model.setCatalog3_id(catalog3);
        int success = skuModelService.insertModel(model);
        if (success == 1) {
            response.getWriter().write("true");
            // 返回插入的模板id
            //TODO 测试通过
             model_id =  skuModelService.getModelIdByName(modelName);
            List<SkuModel> skuModels = skuModelService.getAllModel();
            ServletContext application = this.getServletContext();
            application.setAttribute("skuModels",skuModels);
        }
        //获得json数据
        String group = request.getParameter("group");
        //创建工具对象
        ObjectMapper objectMapper = new ObjectMapper();
        //将json数据转化为对象集合
        List<AttriValue> attriValues = objectMapper.readValue(group, new TypeReference<List<AttriValue>>() {
        });
        if (model_id != null) {
            for (AttriValue attriValue : attriValues) {
                String skuAttriId=null;
                String skuAttriValueId=null;
                //在sku_attri表通过属性名找到id TODO 测试通过
               String AttriId =  skuAttriService.getSkuAttriIdByName(attriValue.getAttri());
               //TODO 测试通过
               String AttriValueId = skuAttriValueService.getSkuAttriValueIdByName(attriValue.getValue());
               //sku_attri_value表中找到外键id TODO 测试通过
               String AttriValueAttriId = skuAttriValueService.getSkuAttriValueAttriIdByName(attriValue.getValue());
                // 判断属性名是否存在，如果有则返回id，没有则插入Skuattri
                if (AttriId == null || "".equals(AttriId)) {
                    //TODO 测试通过
                    skuAttriService.insertAttri(attriValue.getAttri());

                    skuAttriId=skuAttriService.getSkuAttriIdByName(attriValue.getAttri());
                } else {
                    skuAttriId=AttriId;
                }
                //判断属性值是否存在，是否对应属性id，是则返回id，否则则插入并返回id
                boolean notHasAttriValueId = (AttriValueId == null);
                boolean notHasAttriValueAttriId = (AttriValueAttriId == null);
                if (notHasAttriValueId || (!notHasAttriValueAttriId &&!AttriValueAttriId.equals(skuAttriId))) {
                    //TODO 测试通过
                    skuAttriValueService.insertAttriValue(attriValue.getValue(),skuAttriId);
                    //TODO 测试通过？
                    skuAttriValueId=skuAttriValueService.getSkuAttriValueIdByName(attriValue.getValue());
                } else {
                    skuAttriValueId=AttriValueId;
                }
                SkuAttriGroup skuAttriGroup = new SkuAttriGroup();
                skuAttriGroup.setAttri_id(skuAttriId);
                skuAttriGroup.setAttri_value_id(skuAttriValueId);
                skuAttriGroup.setModel_id(model_id);
                //将AttriGroup对象添加到sku_attri_group表中
                //TODO 测试通过
                skuAttriGroupService.insertAttriGroup(skuAttriGroup);

            }



        }


    }


}
