package com.cyxz.cyshop.web.servlet.wt.front;

import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.web.servlet.BaseServlet;
import org.apache.taglibs.standard.tag.el.core.ForEachTag;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName CategoryServlet
 * @Description 前台商品列表展示页面
 * @Author Administrator
 * @date 2019/9/2214:11
 */
@WebServlet("/category/list")
public class CategoryServlet extends BaseServlet {
    /**
     * 根据三级分类a标签使用ajax传输数据跳转至相关三级分类产品列表
     *
     * @param request
     * @param response
     */
    public void category(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //TODO 高勇首页三级分类跳转
        String navi3 = request.getParameter("navi3");
        request.getSession().setAttribute("navi3",navi3);
        response.sendRedirect(request.getContextPath()+"/front/category.jsp");

    }
}
