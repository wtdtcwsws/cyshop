package com.cyxz.cyshop.service;

import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.viewobject.RefundOrReturnItemVO;

import java.util.List;

public interface RefundOrReturnOrderService {
    RefundOrReturnOrder selectOne(String id);
    int updateStatus(RefundOrReturnOrder refundOrReturnOrder);
    RefundOrReturnItemVO showReturnOrder(String OI, List<RefundOrReturnItemVO> returnItemVOs);
    int updateReturnOrderStatus(String id,String status);
}
