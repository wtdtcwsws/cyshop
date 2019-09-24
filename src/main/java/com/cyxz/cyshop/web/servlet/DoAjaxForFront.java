package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.dao.*;
import com.cyxz.cyshop.domain.MemberAddress;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/24
 * @time15:28
 * @place 西部国际金融中心
 */
@WebServlet("/front/DoAjaxForFront")
public class DoAjaxForFront extends BaseServlet {

    public void ForOrderInfo(HttpServletRequest req, HttpServletResponse resp)  throws Exception {
        System.out.println("专门搞前台订单修改地址的ajax方法");
        String Aid = req.getParameter("Aid");
        System.out.println(Aid);
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String phone = req.getParameter("phone");
//        String Oid = req.getParameter("Oid");
        //组装一个memberaddress做参数
        MemberAddress memberAddress = new MemberAddress();
        memberAddress.setId(Aid);
        memberAddress.setPhone(phone);
        memberAddress.setConsignee_name(name);
        memberAddress.setSpecific_address(address);
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        AddressMapper addMapper = sqlSession.getMapper(AddressMapper.class);
        System.out.println(memberAddress);
        int succes = addMapper.uAddress(memberAddress);//组装好的对象作为参数，提交数据库修改状态，一定要提交事务
        sqlSession.commit();//提交数据库事务，否则会回滚，好像没有修改成功一样
        System.out.println("修改收货信息成功"+succes);


//弄出半截网页的信息，发送到半截网页，返回半截网页给ajax
        SimpleDateFormat formatDate = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");//得到一个格式化实体
        Map map = new HashMap();
        String orderId = req.getParameter("Oid");//订单id也要捞出来，由ajax扔过来的
        req.getSession().setAttribute("payId",orderId);
        orderMapper order_mapper = sqlSession.getMapper(orderMapper.class);//订单列表mapper
        AddressMapper add_mapper = sqlSession.getMapper(AddressMapper.class);//地址列表mapper
        Order order = order_mapper.getOrderByOrderId(orderId);//找到对应的order
        map.put("id", order.getId());
        String date = formatDate.format(order.getCreat_time());//格式化得到的时间
        map.put("date", date);
        map.put("status", order.getStatus());
        map.put("money", order.getPayment());
        MemberAddress add = add_mapper.findById(order.getMember_address_id());//根据order的地址编码找到对应的地址
        System.out.println(add);
        req.setAttribute("add", add);
        req.setAttribute("map",map);




        req.getRequestDispatcher("/front/addressInfo.jsp").forward(req,resp);
        sqlSession.close();
    }
}
