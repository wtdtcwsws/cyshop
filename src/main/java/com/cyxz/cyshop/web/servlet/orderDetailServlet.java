package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.CommoditySkuMapper;
import com.cyxz.cyshop.dao.orderDetailMapper;
import com.cyxz.cyshop.domain.OrderItem;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.orderListView;
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
 * @date 2019/9/179:48
 * @place 西部国际金融中心
 */
@WebServlet("/views/OrderDtail")
public class orderDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String order_id = req.getParameter("order_id");
        String status = req.getParameter("status");
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderDetailMapper detailMapper = sqlSession.getMapper(orderDetailMapper.class);
        CommoditySkuMapper skulMapper = sqlSession.getMapper(CommoditySkuMapper.class);
//        新建一个aryy来装组装好的展示数据
        List<orderListView> views = new ArrayList<>();
        List<OrderItem> orderItems = detailMapper.findByOderID(order_id);
        for (OrderItem item:orderItems) {
            orderListView orderview = new orderListView();//新建一个渲染对象，下面往里面丢属性，然后放到列表中
            orderview.setOrderId(item.getOrder_id());//订单编号
            orderview.setNum(item.getNums().toString());//商品购买数量
            //商品名字和单价
            String sku_id = item.getSku_id();//拿到商品的skuid
            orderview.setSku(skulMapper.findBySkuId(sku_id).getDescription());//从根据skuid在sku表拿出的sku名称属性塞到对象属性里面
            orderview.setPrice(skulMapper.findBySkuId(sku_id).getPrice().toString());//拿出价格是数字tostring成字符串
            //商品订单状态
            switch (status){
                case "0":
                    orderview.setStatus("已取消");
                    break;
                case "1":
                    orderview.setStatus("未付款");
                    break;
                case "2":
                    orderview.setStatus("已付款");
                    break;
                case "3":
                    orderview.setStatus("已发货");
                    break;
                case "4":
                    orderview.setStatus("已收货");
                    break;
            }
            views.add(orderview);//把对象塞到列表里面
        }
        req.setAttribute("views",views);//把列表放进request对象转发
        req.getRequestDispatcher("/views/gy/order-detail.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
