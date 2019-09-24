package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/19
 * @time10:08
 * @place 西部国际金融中心
 */
@WebServlet("/views/do-ajaxAll")
public class doAjax extends BaseServlet{
    public void sendGoods(HttpServletRequest req, HttpServletResponse resp)  throws Exception {
        System.out.println("发货确认");
        String num = req.getParameter("num");//获得快递单号待用
        System.out.println("快递单号是："+num);
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
    public void delGoods(HttpServletRequest req, HttpServletResponse resp)  throws Exception {
        System.out.println("删除");
        String id = req.getParameter("id");
        String status = req.getParameter("status");
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);
        int succesItem = orderMapper.delOrderItem(id);//删除数据
        int succes = orderMapper.delOrder(id);//删除数据
        sqlSession.commit();//提交数据库事务，否则会回滚，好像没有修改成功一样
        System.out.println(id+"数据删除"+succes);
        req.getRequestDispatcher("/views/orderServlet/order").forward(req,resp);
        sqlSession.close();
    }
    public void cancelGoods(HttpServletRequest req, HttpServletResponse resp)  throws Exception {
        System.out.println("取消");
        String id = req.getParameter("id");
        String status = req.getParameter("status");
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);
        int succes = orderMapper.cancelOrder(id);//提交数据库修改状态，一定要提交事务
        sqlSession.commit();//提交数据库事务，否则会回滚，好像没有修改成功一样
        System.out.println(id+"取消"+succes);
        req.getRequestDispatcher("/views/orderServlet/order").forward(req,resp);
        sqlSession.close();
    }
}
