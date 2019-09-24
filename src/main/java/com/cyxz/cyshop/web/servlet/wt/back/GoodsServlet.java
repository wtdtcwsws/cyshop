package com.cyxz.cyshop.web.servlet.wt.back;

import com.cyxz.cyshop.dao.SpuListMapper;
import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.domain.SkuModel;
import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.json.AttriValue;
import com.cyxz.cyshop.service.AddSkuService;
import com.cyxz.cyshop.service.SkuModelService;
import com.cyxz.cyshop.service.SpuListService;
import com.cyxz.cyshop.web.servlet.BaseServlet;
import com.cyxz.cyshop.web.util.ConSkuUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName GoodsServlet
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2014:47
 */
@WebServlet("/add/goods")
public class GoodsServlet extends BaseServlet {
    /**
     * 通过三级分类id找到对应的模型们
     *
     * @param request
     * @param response
     */
    public  void getModelByCatalog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String catalog3Id = request.getParameter("catalog3Id");
        //使用Jackson工具类
        ObjectMapper mapper = new ObjectMapper();
        SkuModelService skuModelService = new SkuModelService();
        List<SkuModel> skuModels = skuModelService.getModelByCatalog3Id(catalog3Id);
        response.getWriter().write(mapper.writeValueAsString(skuModels));
    }

    /**
     * 通过模型id返回组合好的属性
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void getSkusListByModelId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String model = request.getParameter("model");
        //使用Jackson工具类
        ObjectMapper mapper = new ObjectMapper();
        AddSkuService addSkuService = new AddSkuService();

        List<String> attriNames = addSkuService.getAttri(model);
        //申明属性值数组集合（同一属性为在同一集合）
        List<String>[] values = new List[attriNames.size()];
        int i = 0;
        for (String na : attriNames) {
            List<String> value = addSkuService.getValue(model, na);
            values[i++] = value;
        }
        //执行排列组合
        List<String[]> cos = ConSkuUtils.coSkus(attriNames,values);


        response.getWriter().write(mapper.writeValueAsString(cos));
    }

    /**
     * 添加一条spu，多条sku到数据库
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void addSkus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        获取json
        String spu_name = request.getParameter("spu_name");
        String c1_id = request.getParameter("c1_id");
        String c2_id = request.getParameter("c2_id");
        String c3_id = request.getParameter("c3_id");
        String c3_name = request.getParameter("c3_name");
        String model_id = request.getParameter("model_id");
        String datas = request.getParameter("datas");

        //创建jackson工具对象
        ObjectMapper objectMapper = new ObjectMapper();
        //创建sku对象
        Spu spu = new Spu();
        spu.setCatalog_1_id(c1_id);
        spu.setCatalog_2_id(c2_id);
        spu.setCatalog_3_id(c3_id);
        spu.setSpu_name(spu_name);
        spu.setSpu_description(c3_name);
        // 添加spu到数据库
        AddSkuService addSkuService = new AddSkuService();
        SpuListService spuListService = new SpuListService();
        //插入spu到数据库并返回id
        String spu_id = addSkuService.insertSpu(spu);
        if (spu_id == null) {
            response.getWriter().write("spu添加失败");
            return;
        }
        List<Spu> spus = spuListService.getAllSpu();
        //更新数据到application中
        request.getServletContext().setAttribute("spus",spus);
        //将json数据转化为对象集合
        List<Sku> skus = objectMapper.readValue(datas, new TypeReference<List<Sku>>() {
        });
        //循环添加相同属性值：名字，模型id，spu_id
        for (Sku k : skus) {
            k.setModel_id(model_id);
            k.setName(spu_name);
            k.setSpu_id(spu_id);
            // 数据库中插入sku
            addSkuService.insertSku(k);
//            取插入数据库后的主键
            String sku_id = k.getId();
            System.out.println("已经sku插入数据库,主键为："+sku_id);
            //按主键将图片路径添加到sku_img表中
            //TODO
            System.out.println(k);


        }

        System.out.println(spu_name);
        System.out.println(datas);
        System.out.println(c3_name);

        response.getWriter().write("添加成功！");
    }

}
