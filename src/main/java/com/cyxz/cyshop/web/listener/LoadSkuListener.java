package com.cyxz.cyshop.web.listener;

import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.service.AddSkuService;
import com.cyxz.cyshop.service.SkuService;
import com.cyxz.cyshop.service.SpuListService;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName LoadSkuListener
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2216:25
 */
public class LoadSkuListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext application = sce.getServletContext();
        AddSkuService addSkuService = new AddSkuService();
        List<Sku> skus = addSkuService.selectSkus();
        application.setAttribute("skus",skus);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
