package com.cyxz.cyshop.web.listener;

import com.cyxz.cyshop.domain.SkuModel;
import com.cyxz.cyshop.service.SkuModelService;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName LoadSkuModelListener
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/1917:21
 */
public class LoadSkuModelListener implements ServletContextListener {
    @Override
    /**
     * 服务器启动加载模型到application
     */
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();
        SkuModelService skuModelService = new SkuModelService();
        List<SkuModel> skuModels = skuModelService.getAllModel();
        application.setAttribute("skuModels",skuModels);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
