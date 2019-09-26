package com.cyxz.cyshop.web.servlet.wt.back;

import com.cyxz.cyshop.domain.Catalog1;
import com.cyxz.cyshop.domain.Catalog2;
import com.cyxz.cyshop.domain.Catalog3;
import com.cyxz.cyshop.service.CatalogService;
import com.cyxz.cyshop.web.servlet.BaseServlet;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName CatalogServlet
 * @Description 添加商品分类的后台验证处理
 * @Author Administrator
 * @date 2019/9/1614:25
 */
@WebServlet("/add/catalog")
public class CatalogServlet extends BaseServlet {
    /**
     * 添加一级商品分类
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void addCatalog1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String catalog1Name = request.getParameter("catalog1");
        CatalogService catalogService = new CatalogService();
        // 获取所有一级分类
        List<Catalog1> catalog1s = catalogService.getCatalog1s();
        // 声明一个变量用来表示一级分类是否存在
        boolean eixst1 = false;
        for (Catalog1 c1 : catalog1s) {
            if (c1.getName().equals(catalog1Name)) {
                eixst1 = true;
            }
        }
        if (!eixst1) {
            Catalog1 catalog1 = new Catalog1();
            catalog1.setName(catalog1Name);
            catalogService.insertCatalog1(catalog1);
            // 重新查询一级分类数据
            catalog1s = catalogService.getCatalog1s();
            // 将第一分类保存在application中
            ServletContext application = this.getServletContext();
            application.setAttribute("catalog1",catalog1s);
        }else {
            request.setAttribute("error","该分类已存在！");
        }
        response.sendRedirect(request.getContextPath() + "/index.jsp#wt/catalog.jsp");
    }

    /**
     * 添加二级商品分类
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void addCatalog2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String catalog1Id = request.getParameter("catalog1Id");
        String catalog2Name = request.getParameter("catalog2");
        CatalogService catalogService = new CatalogService();
        // 获取所有二级分类
        List<Catalog2> catalog2s = catalogService.getCatalog2s();
        // 声明一个变量用来表示二级分类是否存在
        boolean eixst2 = false;
        for (Catalog2 c2 : catalog2s) {
            if (c2.getName().equals(catalog2Name)) {
                eixst2 = true;
            }
        }
        if (!eixst2) {
            Catalog2 catalog2 = new Catalog2();
            catalog2.setCatalog_1_id(catalog1Id);
            catalog2.setName(catalog2Name);
            catalogService.insertCatalog2(catalog2);
            // 重新查询二级分类数据
            catalog2s = catalogService.getCatalog2s();
            ServletContext application = this.getServletContext();
            // 将第二分类保存在application中
            application.setAttribute("catalog2",catalog2s);
        }else {
            request.setAttribute("error","该分类已存在！");
        }
        response.sendRedirect(request.getContextPath() + "/index.jsp#wt/catalog.jsp");
    }

    /**
     * 添加三级商品分类
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void addCatalog3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String catalog1Id = request.getParameter("catalog1Id");
        String catalog2Id = request.getParameter("catalog2Id");
        String catalog3Name = request.getParameter("catalog3");
        CatalogService catalogService = new CatalogService();
        // 获取所有三级分类
        List<Catalog3> catalog3s = catalogService.getCatalog3s();
        // 声明一个变量用来表示三级分类是否存在
        boolean eixst3 = false;
        for (Catalog3 c3 : catalog3s) {
            if (c3.getName().equals(catalog3Name)) {
                eixst3 = true;
            }
        }
        if (!eixst3) {
            Catalog3 catalog3 = new Catalog3();
            catalog3.setName(catalog3Name);
            catalog3.setCatalog_2_id(catalog2Id);

            catalogService.insertCatalog3(catalog3);
            // 重新查询三级分类数据
            catalog3s = catalogService.getCatalog3s();
            ServletContext application = this.getServletContext();
            // 将第三分类保存在application中
            application.setAttribute("catalog3",catalog3s);
        }else {
            request.setAttribute("error","该分类已存在！");
        }
        response.sendRedirect(request.getContextPath() + "/index.jsp#wt/catalog.jsp");
    }

    /**
     * 根据第一分类id获取第二分类内容
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void getCatalog2s(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String catalog1Id =  request.getParameter("catalog1Id");
        //使用Jackson工具类
        ObjectMapper mapper = new ObjectMapper();
        CatalogService catalogService = new CatalogService();
        List<Catalog2> catalog2s =  catalogService.getCatalog2s(catalog1Id);

        System.out.println(mapper.writeValueAsString(catalog2s));
        response.getWriter().write(mapper.writeValueAsString(catalog2s));
    }

    /**
 * 根据第二分类id获取第三分类内容
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void getCatalog3s(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String catalog2Id =  request.getParameter("catalog2Id");
        System.out.println("+++++++++++++");
        System.out.println("二级分类编号"+catalog2Id);
        System.out.println("+++++++++++++");
        //使用Jackson工具类
        ObjectMapper mapper = new ObjectMapper();
        CatalogService catalogService = new CatalogService();
        List<Catalog3> catalog3s =  catalogService.getCatalog3s(catalog2Id);

        System.out.println(mapper.writeValueAsString(catalog3s));
        response.getWriter().write(mapper.writeValueAsString(catalog3s));
    }
}
