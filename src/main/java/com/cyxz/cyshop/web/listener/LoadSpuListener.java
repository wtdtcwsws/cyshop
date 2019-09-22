package com.cyxz.cyshop.web.listener;

import com.cyxz.cyshop.domain.SkuModel;
import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.service.SkuModelService;
import com.cyxz.cyshop.service.SpuListService;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName LoadSpuListener
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2122:47
 */
public class LoadSpuListener implements ServletContextListener {
    /**
     * 服务器启动加载spu到application
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();
        SpuListService spuListService = new SpuListService();
        List<Spu> spus = spuListService.getAllSpu();
        application.setAttribute("spus",spus);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
