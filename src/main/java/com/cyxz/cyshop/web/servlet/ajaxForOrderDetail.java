package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/18
 * @time15:59
 * @place 西部国际金融中心
 */
@WebServlet("/views/do-ajax")
public class ajaxForOrderDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("进入ajax");
        String id = req.getParameter("id");
        String status = req.getParameter("status");
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);
        int succes = orderMapper.updateOrder(id);//提交数据库修改，一定要提交事务
        sqlSession.commit();//提交数据库事务，否则会回滚，好像没有修改成功一样
        System.out.println(id+"运行到这里了哦"+succes);
       req.getRequestDispatcher("/views/orderServlet/order").forward(req,resp);
        sqlSession.close();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
