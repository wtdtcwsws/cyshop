package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.common.PageBean;
import com.cyxz.cyshop.dao.SkuMapper;
import com.cyxz.cyshop.dao.orderDetailMapper;
import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.domain.*;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.OrderView;
import org.apache.ibatis.session.SqlSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
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
        System.out.println("进入order的servlet");
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);
        orderDetailMapper detailMapper = sqlSession.getMapper(orderDetailMapper.class);
       SkuMapper skulMapper = sqlSession.getMapper(SkuMapper.class);
        List<Order> orders = orderMapper.selectAll();//捞出order数据,原始的全部捞出来






        /**
         * 根据分页的数据条数，当前页码，每页显示的条数，数据总条数构建分页需要的数据
         *
         * @param rows      分页显示的数据
         * @param pageIndex 当前显示的页码
         * @param pageSize  每页显示的条数
         * @param total     数据总条数
         */
        //获得页数
//        String str_pageindex = req.getParameter("pageindex");
//        int pageindex = 1;
//        if(!(str_pageindex==null)){
//            pageindex = Integer.parseInt(str_pageindex);
//        }
//        //设置每页显示条数
//       int pageSize =  5;
//        //总数据要查出来
//        int total = orderMapper.getCount();
//        List<Order> orders = orderMapper.selectView(pageindex-1,pageSize);//捞出order数据，这里只捞显示数据
//        PageBean  PBean = new PageBean(orders,pageindex,pageSize,total);
//        req.setAttribute("PBean",PBean);






        List<OrderView> orderViews = new ArrayList<OrderView>();//用来保存展示对象
//        这里需要组装页面展示对象
        for (Order order:orders) {
            List<OrderItem> items = detailMapper.findByOderID(order.getId());
            String productName = "商品：";
            for (OrderItem  item:items) {
                Sku sku = skulMapper.findBySkuId(item.getSku_id());
                productName+="/"+sku.getName();
            }

            OrderView orderView = new OrderView();//创建一个对象用来接收属性
            orderView.setId(order.getId());
            orderView.setProductName(productName);
            orderView.setPayment(order.getPayment());
            orderView.setPost_price(order.getPost_price());
            orderView.setStatus(Integer.parseInt(order.getStatus()));
            orderView.setTotal_price(order.getTotal_price());
            orderViews.add(orderView);
            System.out.println(orderView.getId()+"编号/状态"+orderView.getStatus());
        }
        req.setAttribute("orderViews",orderViews);
        req.setAttribute("orders",orders);
        req.getRequestDispatcher("/views/gy/order-list.jsp").forward(req,resp);//因为框架默认拼接了views文件夹所以这里要写上
        sqlSession.close();//记得关闭sqlSession

        System.out.println("执行到此");
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
