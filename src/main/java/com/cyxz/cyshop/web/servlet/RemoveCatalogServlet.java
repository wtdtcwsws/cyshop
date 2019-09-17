package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.service.CatalogService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @version 1.0.0
 * @ClassName RemoveCatalogServlet
 * @Description 删除分类
 * @Author Administrator
 * @date 2019/9/1715:57
 */
@WebServlet("/remove/catalog")
public class RemoveCatalogServlet extends BaseServlet {
    /**
     * 删除分类
     * @return
     */
    protected void removeCatalog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("catalogid");
        String level = request.getParameter("cataloglevel");
        System.out.println(id+" "+level);

        CatalogService catalogService = new CatalogService();
        switch (level) {
            case "1":
                catalogService.deleteCatalog1(id);
                response.getWriter().write("删除一级分类成功");
                response.sendRedirect(request.getContextPath() + "/#wt/catalog.jsp");
                return;
            case "2":
                catalogService.deleteCatalog2(id);
                response.getWriter().write("删除二级分类成功");
                response.sendRedirect(request.getContextPath() + "/#wt/catalog.jsp");
                return ;
            case "3":
                catalogService.deleteCatalog3(id);
                response.getWriter().write("删除三级分类成功");
                response.sendRedirect(request.getContextPath() + "/#wt/catalog.jsp");
                return ;

        }

        response.getWriter().write("删除分类失败");
    }
}
