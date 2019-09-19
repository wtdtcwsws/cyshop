package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.service.RefundOrReturnOrderService;
import com.cyxz.cyshop.service.impl.RefundOrReturnOrderServiceImpl;
import com.cyxz.cyshop.viewobject.RefundOrReturnItemVO;
import com.cyxz.cyshop.web.servlet.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
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
@WebServlet("/views/refundOrReturnOrder")
public class RefundOrReturnOrderServlet extends BaseServlet {

    public void lookReturnOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String OI = request.getParameter("OI");
        List<RefundOrReturnItemVO> returnItemVOs = (List<RefundOrReturnItemVO>)session.getAttribute("refundOrReturnItemVOs");
        session.removeAttribute("refundOrReturnItemVOs");
        RefundOrReturnOrderService refundOrReturnOrderService = new RefundOrReturnOrderServiceImpl();
        RefundOrReturnItemVO refundOrReturnItemVO = refundOrReturnOrderService.showReturnOrder(OI,returnItemVOs);
        request.setAttribute("refundOrReturnItemVO",refundOrReturnItemVO);
        request.getRequestDispatcher("/views/zhy/returnDetails.jsp").forward(request, response);
    }

    public void updateStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("ROI");
        String status = request.getParameter("value1");
        RefundOrReturnOrderService refundOrReturnOrderService = new RefundOrReturnOrderServiceImpl();
        int row = refundOrReturnOrderService.updateReturnOrderStatus(id,status);
        if(row > 0){
            request.getRequestDispatcher("/views/refundOrReturnItem?method=findReturnItem").forward(request, response);
        }else{
            request.getRequestDispatcher("/views/refundOrReturnItem?method=findReturnItem").forward(request, response);
        }
    }
}
