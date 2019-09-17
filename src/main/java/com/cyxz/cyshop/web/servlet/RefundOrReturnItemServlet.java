package com.cyxz.cyshop.web.servlet;

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
        List<RefundOrReturnItem> refundOrReturnItemReturnIds = refundOrReturnItemService.findReturnIdList();
        RefundOrReturnOrderService refundOrReturnOrderService = new RefundOrReturnOrderServiceImpl();
        List<RefundOrReturnItemVO> refundOrReturnItemVOs = new ArrayList<RefundOrReturnItemVO>();
        for (int i = 0;i<refundOrReturnItemReturnIds.size();i++){
            RefundOrReturnItemVO refundOrReturnItemVO = new RefundOrReturnItemVO();
            RefundOrReturnOrder refundOrReturnOrder = refundOrReturnOrderService.selectOne(refundOrReturnItemReturnIds.get(i).getReturn_id());
            RefundOrReturnItem refundOrReturnItem = refundOrReturnItemService.findRefundOrReturnItem(refundOrReturnOrder.getId());
            refundOrReturnItemVO.setId(refundOrReturnOrder.getId());
            // 订单号
            refundOrReturnItemVO.setOrderId(refundOrReturnOrder.getOrder_id());
            // 商品名称
            refundOrReturnItemVO.setSpuName(refundOrReturnOrder.getSpu_name());
            // 购买数量
            refundOrReturnItemVO.setNums(refundOrReturnItem.getNums());
            // 购买金额
            refundOrReturnItemVO.setCount(refundOrReturnOrder.getCount());
            // 用户名，这里差一个menber的Service方法
            refundOrReturnItemVO.setMemberName("小白"+ i + "号");
            // 创建事件
            refundOrReturnItemVO.setCreatTime(refundOrReturnOrder.getCreat_time());
            // 退货款原因
            refundOrReturnItemVO.setReason(refundOrReturnOrder.getReason());
            // 退货款状态
            refundOrReturnItemVO.setStatus(refundOrReturnOrder.getStatus());
            System.out.println(10);
            refundOrReturnItemVOs.add(refundOrReturnItemVO);
        }
        session.setAttribute("refundOrReturnItemVOs",refundOrReturnItemVOs);
        response.sendRedirect("/views/zhy/returnsList.jsp");
    }

    public void updateItemStatus(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("id");
        String value = request.getParameter("value");
        RefundOrReturnOrderService refundOrReturnOrderService = new RefundOrReturnOrderServiceImpl();
        RefundOrReturnOrder refundOrReturnOrder = new RefundOrReturnOrder();
        refundOrReturnOrder.setStatus(value);
        refundOrReturnOrder.setId(id);
        int row = refundOrReturnOrderService.updateStatus(refundOrReturnOrder);
    }
}
