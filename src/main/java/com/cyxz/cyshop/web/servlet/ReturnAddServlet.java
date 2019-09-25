package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.service.RefundOrReturnOrdersService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.SequenceInputStream;
import java.math.BigDecimal;
import java.util.ResourceBundle;

/**
 * 罗海
 */
@WebServlet("/submit/return")
public class ReturnAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 接收数据
        Member member = (Member)request.getSession().getAttribute("member");
        Order orders = (Order)request.getSession().getAttribute("orders");
        String reason = request.getParameter("cause");

        RefundOrReturnOrder refundOrReturnOrder = new RefundOrReturnOrder();

        refundOrReturnOrder.setMember_id(member.getId());
        refundOrReturnOrder.setSpu_name("未知");//查找数据
        refundOrReturnOrder.setOrder_id(orders.getId());
        BigDecimal bigDecimal = new BigDecimal("1212");
        refundOrReturnOrder.setCount(bigDecimal);//查找数据
        refundOrReturnOrder.setReason(reason);

        RefundOrReturnOrdersService refundOrReturnOrderService = new RefundOrReturnOrdersService();
        Integer num = refundOrReturnOrderService.Add(refundOrReturnOrder);

        System.out.println(num);

        if(num > 0){
            response.getWriter().write(request.getContextPath()+ "/views/frontOrderItem?method=findAllOrder");
        }else {
            response.getWriter().write("no");
        }
    }
}
