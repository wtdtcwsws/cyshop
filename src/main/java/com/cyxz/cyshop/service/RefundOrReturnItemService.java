package com.cyxz.cyshop.service;

import com.cyxz.cyshop.domain.RefundOrReturnItem;

import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public interface RefundOrReturnItemService {
    List<RefundOrReturnItem> findReturnIdList();
    RefundOrReturnItem findRefundOrReturnItem(String return_id);
}
