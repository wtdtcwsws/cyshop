package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.domain.Order;
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
 * @date 2019/9/1616:39
 * @place 西部国际金融中心
 */
@WebServlet("/views/orderServlet/order")//因为框架默认拼接了views文件夹所以这里要写上
public class orderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String memberId = "5";//这里的id需要从数据里面捞出来，这里临时用5顶替一下，记得捞哦

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);
        List<Order> orders = orderMapper.getOrderByMemberId(memberId);
        req.setAttribute("orders",orders);
        System.out.println("执行到此");
        req.getRequestDispatcher("/views/gy/order-list.jsp").forward(req,resp);//因为框架默认拼接了views文件夹所以这里要写上
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
