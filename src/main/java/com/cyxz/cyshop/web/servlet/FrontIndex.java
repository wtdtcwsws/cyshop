package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.CatalogMapepr;
import com.cyxz.cyshop.domain.Catalog1;
import com.cyxz.cyshop.domain.Catalog2;
import com.cyxz.cyshop.domain.Catalog3;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/19
 * @time17:37
 * @place 西部国际金融中心
 */
@WebServlet("/index")
public class FrontIndex extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        CatalogMapepr c1Mapper=sqlSession.getMapper(CatalogMapepr.class);
        List<Catalog1> c1s = c1Mapper.getCatalog1s();
        List<Catalog2> c2s = c1Mapper.getCatalog2s();
        List<Catalog3> c3s = c1Mapper.getCatalog3s();
//        统统扔到request里面，转发到页面用
        request.setAttribute("c1s",c1s);
        request.setAttribute("c2s",c2s);
        request.setAttribute("c3s",c3s);
        for (Catalog2 c:c2s ) {
            System.out.println(c.getName());
        }
        request.getRequestDispatcher("front/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
