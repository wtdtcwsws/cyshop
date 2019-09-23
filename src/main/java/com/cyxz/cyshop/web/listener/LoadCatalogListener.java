package com.cyxz.cyshop.web.listener;

import com.cyxz.cyshop.domain.Catalog1;
import com.cyxz.cyshop.domain.Catalog2;
import com.cyxz.cyshop.domain.Catalog3;
import com.cyxz.cyshop.service.CatalogService;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName LoadCatalogListener
 * @Description 预加载三级分类
 * @Author Administrator
 * @date 2019/9/1721:34
 */
public class LoadCatalogListener implements ServletContextListener {



    @Override
    public void contextInitialized(ServletContextEvent sce) {
        CatalogService catalogService = new CatalogService();
        ServletContext application = sce.getServletContext();
        List<Catalog1> catalog1s = catalogService.getCatalog1s();
        List<Catalog2> catalog2s = catalogService.getCatalog2s();
        List<Catalog3> catalog3s = catalogService.getCatalog3s();
        application.setAttribute("catalog1",catalog1s);
        application.setAttribute("catalog2",catalog2s);
        application.setAttribute("catalog3",catalog3s);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
