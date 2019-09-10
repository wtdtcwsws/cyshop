package com.cyxz.cyshop.web.listener;
/**
 * 绝对路径的监听
 */

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextPathListener implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //服务器初始化是设置项目的绝对地址（项目根路径）
        ServletContext application = sce.getServletContext();
        String root = application.getContextPath();
        application.setAttribute("root",root);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
