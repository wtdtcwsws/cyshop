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

        DateForMat dateForMat = new DateForMat();
        MemberService memberService = new MemberService();
        // 需要获得四个信息，第一个该会员信息，第二个该订单项的信息，第三个该订单信息，第四个通过订单信息找到的订单中的商品信息
        Order order = new Order();
        OrderItem orderItem = new OrderItem();
        Sku sku = new Sku();

        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMappers = sqlSession.getMapper(orderMapper.class);
        List<Order> orderAll = orderMappers.getOrderByMemberId("2");

        // 用来使用的对象或者集合
        Member member = new Member();
        List<Member> members = memberService.selectMember();
        Order orders = orderAll.get(0);
        List<OrderItem> orderItems = new ArrayList<OrderItem>();
        List<Sku> skus = new ArrayList<Sku>();

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
        for (Member mem : members){
            if(mem.getId().equals("2")){
                member = mem;
                break;
            }
        }
//******************************************************************************************************//
        HttpSession sessions = request.getSession();
        sessions.setAttribute("member",member);
        sessions.setAttribute("members",members);
        sessions.setAttribute("orders",orders);
        sessions.setAttribute("orderItems",orderItems);
        sessions.setAttribute("skus",skus);
        sessions.setAttribute("dateForMat",dateForMat);

        response.sendRedirect(request.getContextPath() + "/front/return.jsp");
    }
}
