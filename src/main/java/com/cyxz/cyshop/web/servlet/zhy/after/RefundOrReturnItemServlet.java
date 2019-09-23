package com.cyxz.cyshop.web.servlet.zhy.after;

import com.cyxz.cyshop.domain.RefundOrReturnItem;
import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.service.RefundOrReturnItemService;
import com.cyxz.cyshop.service.RefundOrReturnOrderService;
import com.cyxz.cyshop.service.impl.RefundOrReturnItemServiceImpl;
import com.cyxz.cyshop.service.impl.RefundOrReturnOrderServiceImpl;
import com.cyxz.cyshop.viewobject.RefundOrReturnItemVO;
import com.cyxz.cyshop.web.servlet.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
@WebServlet("/views/refundOrReturnItem")
public class RefundOrReturnItemServlet extends BaseServlet {

    public void findReturnItem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        RefundOrReturnItemService refundOrReturnItemService = new RefundOrReturnItemServiceImpl();
        List<RefundOrReturnItemVO> refundOrReturnItemVOs = refundOrReturnItemService.assembling();
        session.setAttribute("refundOrReturnItemVOs",refundOrReturnItemVOs);
        response.sendRedirect("/views/zhy/returnsList.jsp");
    }

    public void updateItemStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        String status = request.getParameter("value");
        RefundOrReturnItemService refundOrReturnItemService = new RefundOrReturnItemServiceImpl();
        boolean valid = refundOrReturnItemService.updateStatus(id,status);
        if (valid){
            List<RefundOrReturnItemVO> refundOrReturnItemVOs = refundOrReturnItemService.assembling();
            session.setAttribute("refundOrReturnItemVOs",refundOrReturnItemVOs);
        }
    }
}
