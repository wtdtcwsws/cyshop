package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.RefundOrReturnOrder;

public interface RefundOrReturnOrderMapper {
    RefundOrReturnOrder getRefundOrReturnOrder(String id);
    int updateStatus(RefundOrReturnOrder refundOrReturnOrder);
}
