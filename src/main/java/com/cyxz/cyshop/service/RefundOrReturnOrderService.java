package com.cyxz.cyshop.service;

import com.cyxz.cyshop.domain.RefundOrReturnOrder;

public interface RefundOrReturnOrderService {
    RefundOrReturnOrder selectOne(String id);
    int updateStatus(RefundOrReturnOrder refundOrReturnOrder);
}
