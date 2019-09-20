package com.cyxz.cyshop.service.impl;

import com.cyxz.cyshop.dao.RefundOrReturnOrderMapper;
import com.cyxz.cyshop.domain.RefundOrReturnOrder;
import com.cyxz.cyshop.service.RefundOrReturnOrderService;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.RefundOrReturnItemVO;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
public class RefundOrReturnOrderServiceImpl implements RefundOrReturnOrderService {
    @Override
    public RefundOrReturnOrder selectOne(String id) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        RefundOrReturnOrderMapper refundOrReturnOrderMapper = sqlSession.getMapper(RefundOrReturnOrderMapper.class);
        RefundOrReturnOrder refundOrReturnOrder = refundOrReturnOrderMapper.getRefundOrReturnOrder(id);
        sqlSession.commit();
        return refundOrReturnOrder;
    }

    @Override
    public int updateStatus(RefundOrReturnOrder refundOrReturnOrder) {
        SqlSession sqlSession = null;
        sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        RefundOrReturnOrderMapper refundOrReturnOrderMapper = sqlSession.getMapper(RefundOrReturnOrderMapper.class);
        int row = refundOrReturnOrderMapper.updateStatus(refundOrReturnOrder);
        sqlSession.commit();
        sqlSession.close();
        return row;
    }

    @Override
    public RefundOrReturnItemVO showReturnOrder(String OI, List<RefundOrReturnItemVO> returnItemVOs) {
        int oI = Integer.parseInt(OI);
        int orderId = oI + 1;
        RefundOrReturnItemVO refundOrReturnItemVO = new RefundOrReturnItemVO();
        int i = 0;
        for (RefundOrReturnItemVO rORIVO : returnItemVOs) {
            int rIVOID = Integer.parseInt(returnItemVOs.get(i).getId());
            if(orderId == rIVOID){
                refundOrReturnItemVO.setId(rORIVO.getId());
                refundOrReturnItemVO.setOrderId(rORIVO.getOrderId());
                refundOrReturnItemVO.setMemberName(rORIVO.getMemberName());
                refundOrReturnItemVO.setSpuName(rORIVO.getSpuName());
                refundOrReturnItemVO.setCreatTime(rORIVO.getCreatTime());
                refundOrReturnItemVO.setNums(rORIVO.getNums());
                refundOrReturnItemVO.setCount(rORIVO.getCount());
                refundOrReturnItemVO.setReason(rORIVO.getReason());
                refundOrReturnItemVO.setStatus(rORIVO.getStatus());
            }
            i++;
        }
        return refundOrReturnItemVO;
    }

    @Override
    public int updateReturnOrderStatus(String id, String status) {
        RefundOrReturnOrder refundOrReturnOrder = new RefundOrReturnOrder();
        refundOrReturnOrder.setStatus(status);
        refundOrReturnOrder.setId(id);
        int row = this.updateStatus(refundOrReturnOrder);
        return row;
    }
}
