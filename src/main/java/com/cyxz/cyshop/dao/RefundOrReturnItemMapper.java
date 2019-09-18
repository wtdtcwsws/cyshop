package com.cyxz.cyshop.dao;

import com.cyxz.cyshop.domain.RefundOrReturnItem;

import java.util.List;

public interface RefundOrReturnItemMapper {
    List<RefundOrReturnItem> foundALL();
    RefundOrReturnItem findRefundOrReturnItem(String return_id);
}
