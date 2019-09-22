package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.RefundOrReturnItemMapper;
import com.cyxz.cyshop.domain.RefundOrReturnItem;
import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.service.RefundOrReturnItemService;
import com.cyxz.cyshop.service.RefundOrReturnOrderService;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.RefundOrReturnItemVO;
import org.apache.ibatis.session.SqlSession;

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
public class RefundOrReturnItemServiceImpl implements RefundOrReturnItemService {

    static SqlSession sqlSession = null;
    static RefundOrReturnItemMapper refundOrReturnItemMapper = null;

    public static RefundOrReturnItemMapper getMapper(){
        if(sqlSession== null || refundOrReturnItemMapper==null){
            sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
            RefundOrReturnItemMapper refundOrReturnItemMapper = sqlSession.getMapper(RefundOrReturnItemMapper.class);
            return refundOrReturnItemMapper;
        }
        return refundOrReturnItemMapper;
    }

    @Override
    public List<RefundOrReturnItem> findReturnIdList() {
        RefundOrReturnItemMapper refundOrReturnItemMapper = RefundOrReturnItemServiceImpl.getMapper();
        List<RefundOrReturnItem> refundOrReturnItemReturnIds = refundOrReturnItemMapper.foundALL();
        sqlSession.commit();
        sqlSession.close();
        return refundOrReturnItemReturnIds;
    }

    @Override
    public RefundOrReturnItem findRefundOrReturnItem(String return_id) {
        RefundOrReturnItemMapper refundOrReturnItemMapper = RefundOrReturnItemServiceImpl.getMapper();
        RefundOrReturnItem refundOrReturnItem = refundOrReturnItemMapper.findRefundOrReturnItem(return_id);
        sqlSession.commit();
        sqlSession.close();
        return refundOrReturnItem;
    }

    @Override
    public List<RefundOrReturnItemVO> assembling() {
        List<RefundOrReturnItem> refundOrReturnItemReturnIds = this.findReturnIdList();
        RefundOrReturnOrderService refundOrReturnOrderService = new RefundOrReturnOrderServiceImpl();
        List<RefundOrReturnItemVO> refundOrReturnItemVOs = new ArrayList<RefundOrReturnItemVO>();
        for (int i = 0;i<refundOrReturnItemReturnIds.size();i++){
            RefundOrReturnItemVO refundOrReturnItemVO = new RefundOrReturnItemVO();
            RefundOrReturnOrder refundOrReturnOrder = refundOrReturnOrderService.selectOne(refundOrReturnItemReturnIds.get(i).getReturn_id());
            RefundOrReturnItem refundOrReturnItem = this.findRefundOrReturnItem(refundOrReturnOrder.getId());
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
        return refundOrReturnItemVOs;
    }

    /**
     * 更新退货款单的状态
     * @param id
     * @param status
     * @return
     */
    @Override
    public boolean updateStatus(String id, String status) {
        RefundOrReturnOrderService refundOrReturnOrderService = new RefundOrReturnOrderServiceImpl();
        RefundOrReturnOrder refundOrReturnOrder = new RefundOrReturnOrder();
        refundOrReturnOrder.setStatus(status);
        refundOrReturnOrder.setId(id);
        int row = refundOrReturnOrderService.updateStatus(refundOrReturnOrder);
        if(row > 0){
            return true;
        }
        return false;
    }
}
