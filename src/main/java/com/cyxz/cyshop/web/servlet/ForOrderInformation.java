package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.*;
import com.cyxz.cyshop.domain.*;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.OrderInformationVO;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/20
 * @time11:53
 * @place 西部国际金融中心
 */
@WebServlet("/front/OrderInfo")
public class ForOrderInformation extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String memberId = "5";//这里要捞到member的id
        Map map = new HashMap();
        String orderId = "2";//订单id也要捞出来，由前端的页面扔过来
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper order_mapper = sqlSession.getMapper(orderMapper.class);//订单列表mapper
        AddressMapper add_mapper = sqlSession.getMapper(AddressMapper.class);//地址列表mapper
        orderDetailMapper orderItem_mapper = sqlSession.getMapper(orderDetailMapper.class);//订单详细列表mapper
        SkuMapper sku_mapper = sqlSession.getMapper(SkuMapper.class);//sku的mapper
        SpuMapper spu_mapper = sqlSession.getMapper(SpuMapper.class);//sku的mapper
        Order order = order_mapper.getOrderByOrderId(orderId);//找到对应的order
        map.put("id", order.getId());
        map.put("date", order.getCreat_time());
        map.put("status", order.getStatus());
        map.put("money", order.getPayment());
        MemberAddress add = add_mapper.findById(order.getMember_address_id());//根据order的地址编码找到对应的地址
        System.out.println(add);
        req.setAttribute("add", add);
        List<OrderItem> orderItems = orderItem_mapper.findByOderID(order.getId());//根据order的id找到所有的item
        List<OrderInformationVO> vos = new ArrayList<>();
        for (OrderItem s : orderItems) {//循环items并根据item中sku的id找到sku
            OrderInformationVO vo = new OrderInformationVO();
            Sku sku = sku_mapper.findBySkuId(s.getSku_id());//根据订单详细中的skuid找到sku
            Spu spu = spu_mapper.findById(sku.getSpu_id());//查找到sku对应的spu
            vo.setName(spu.getSpu_name());//设置名称，也即是spu名称
            vo.setModel(sku.getName());//设置型号也就是sku名字
            vo.setNum(s.getNums().toString());//设置数量
            vo.setPrice(sku.getPrice().toString());//设置单价
            vo.setTotal(order.getPayment().toString());//设置合计
            vos.add(vo);


        }
        req.setAttribute("map",map);
        req.setAttribute("vos", vos);//扔到req里面转发到页面
        System.out.println("运行到这里");
        req.getRequestDispatcher("orderInformation.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
