package com.cyxz.cyshop.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import com.cyxz.cyshop.domain.*;
import com.cyxz.cyshop.service.MemberService;

import java.math.BigDecimal;
import java.util.List;

import com.cyxz.cyshop.service.RefundOrReturnOrderService;
import com.cyxz.cyshop.service.RefundOrReturnOrdersService;
import org.apache.ibatis.session.SqlSession;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.dao.orderDetailMapper;
import java.util.ArrayList;
import com.cyxz.cyshop.service.SkuService;
import com.cyxz.cyshop.web.util.DateForMat;
import sun.awt.geom.AreaOp;

/**
 * 罗海
 */
@WebServlet("/indect/return")
public class ReturnServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        DateForMat dateForMat = new DateForMat();
        // 需要获得四个信息，第一个该会员信息，第二个该订单项的信息，第三个该订单信息，第四个通过订单信息找到的订单中的商品信息
        String orderId = request.getParameter("id");
        Member member = (Member) session.getAttribute("login-info");
        System.out.println(orderId);

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMappers = sqlSession.getMapper(orderMapper.class);
        List<Order> orderAll = orderMappers.getOrderByMemberId(member.getId());

        // 用来使用的对象或者集合
        System.out.println("罗海");
        Order orders = orderAll.get(0);
        System.out.println(orders);
        List<Sku> skus = new ArrayList<Sku>();

        List<OrderItem> orderItems = new ArrayList<OrderItem>();
        orderDetailMapper orderDetailMappers = sqlSession.getMapper(orderDetailMapper.class);
        List<OrderItem> orderDetailAll = orderDetailMappers.findByOderID(orders.getId());
        SkuService skuService = new SkuService();
        List<Sku> skuAll = skuService.selectSku();


        for(OrderItem orderItem1 : orderDetailAll){
            orderItems.add(orderItem1);
        }

        for (Sku sku1 : skuAll){
            for(OrderItem orderitem2 : orderItems){
                if (sku1.getId().equals(orderitem2.getSku_id())){
                    skus.add(sku1);
                }
            }
        }

        System.out.println(member);
        System.out.println(orders);
        System.out.println(skus);

//******************************************************************************************************//
        session.setAttribute("member",member);
        session.setAttribute("orders",orders);
        session.setAttribute("skus",skus);
        session.setAttribute("dateForMat",dateForMat);

        response.sendRedirect(request.getContextPath() + "/front/return.jsp");
    }
}
