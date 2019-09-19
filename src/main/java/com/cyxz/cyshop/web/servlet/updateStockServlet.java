package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.SkuMapper;
import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.service.SkuService;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/update/stock")
public class updateStockServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //  获取新的库存
        String stock = request.getParameter("newStock");
        //  获取更改库存的数据的id
        String id = request.getParameter("id");
        // 转换库存数的类型
        int stocks = Integer.parseInt(stock);

        System.out.println(stock);
        System.out.println(id);
        System.out.println("罗海的测试");

        Sku sku = new Sku();
        SkuService skuService = new SkuService();
        // 将数据放入sku里面
        sku.setId(id);
        sku.setStock(stocks);

        Integer num = skuService.updateStock(sku);

        response.getWriter().write("false");
    }
}
