package com.cyxz.cyshop.web.servlet.zhy.front;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.service.FrontOrderItemService;
import com.cyxz.cyshop.service.PaymentService;
import com.cyxz.cyshop.service.impl.FrontOrderItemServiceImpl;
import com.cyxz.cyshop.service.impl.PaymentServiceImpl;
import com.cyxz.cyshop.viewobject.OrderItemVO;
import com.cyxz.cyshop.web.servlet.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
@WebServlet("/views/frontOrderItem")
public class OrderItemServlet extends BaseServlet {
    /**
     * 找到所有的订单
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void findAllOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        FrontOrderItemService frontOrderItemService = new FrontOrderItemServiceImpl();
        Member member = (Member)session.getAttribute("login-info");
        if(member == null){
            response.sendRedirect(request.getContextPath()+"/front/login.jsp");
//            return null;
            return;
        }
        List<OrderItemVO> orderItemVOs = frontOrderItemService.findAllOrder(member.getId());
        session.setAttribute("orderItemVOs",orderItemVOs);
//        return "/front/orderItem.jsp";
//        response.getWriter().write(request.getContextPath()+"/front/orderItem.jsp");
        response.sendRedirect(request.getContextPath()+"/front/orderItem.jsp");
    }

    /**
     * 修改订单状态
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void updateOrderStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        PaymentService paymentService = new PaymentServiceImpl();
        int row = paymentService.updateOrderStatus();
        this.findAllOrder(request,response);
    }

    /**
     * 修改订单状态（订单详情进入）
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void updateOrderStatus2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        PaymentService paymentService = new PaymentServiceImpl();
        String payId =(String)session.getAttribute("payId");
        int row = paymentService.updateOrderStatus2(payId);
        session.removeAttribute("payId");
        this.findAllOrder(request,response);
    }

    /**
     * 删除订单
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public String deleteOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        FrontOrderItemService frontOrderItemService = new FrontOrderItemServiceImpl();
        Member member = (Member)session.getAttribute("login-info");
        String orderId = request.getParameter("orderId");
        System.out.println("删除的数据编号："+orderId);
        int deleteValid = frontOrderItemService.deleteOrder(orderId);
        System.out.println(deleteValid);
        List<OrderItemVO> orderItemVOs = frontOrderItemService.findAllOrder(member.getId());
        System.out.println(orderItemVOs);
        session.setAttribute("orderItemVOs",orderItemVOs);
//        request.setAttribute("orderItemVOs",orderItemVOs);
//        response.getWriter().write(request.getContextPath()+"/front/orderItem.jsp");
        return "/front/orderItemTable.jsp";
//        request.getRequestDispatcher("/front/orderItemTable.jsp").forward(request,response);
    }
}
