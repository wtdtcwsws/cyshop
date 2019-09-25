package com.cyxz.cyshop.web.servlet.zhy.front;

import com.cyxz.cyshop.dao.FrontOrderItemMapper;
import com.cyxz.cyshop.dao.SkuImageMapper;
import com.cyxz.cyshop.domain.*;
import com.cyxz.cyshop.service.AddSkuService;
import com.cyxz.cyshop.service.CheckoutService;
import com.cyxz.cyshop.service.impl.CheckoutServiceImpl;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.ConfirmOrderVO;
import com.cyxz.cyshop.web.servlet.BaseServlet;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author zhy
 * @version 1.0.0
 * @function TODO
 * @date 2019年9月4日下午3:01:42
 * @place 工作地点
 * @remarks TODO
 */
@WebServlet("/views/checkout")
public class CheckoutServlet extends BaseServlet {

    private SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();

    /**
     * 查找所有的收获地址
     * @param request
     * @param response
     * @return 返回收获地址的集合
     * @throws ServletException
     * @throws IOException
     */
    public List<MemberAddress> findAlladdress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
//        接收session中的登陆信息
        Member member = (Member)session.getAttribute("login-info");
//        取得登陆信息的id
        String id = member.getId();
        CheckoutService checkoutService = new CheckoutServiceImpl();
//        通过登陆信息的id获取所有该id的收获地址
        List<MemberAddress> memberAddressess = checkoutService.findAderessByMemberId(id);
        return memberAddressess;
    }

    /**
     * 接收点击购买的商品信息
     * @param request
     * @param response
     * @return
     * @throws ServletException
     * @throws IOException
     */
    public ConfirmOrderVO receiveOrderMessage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
//        构建展示的对象
        ConfirmOrderVO confirmOrderVO = new ConfirmOrderVO();
        String setId = (String)request.getParameter("$sku");
        AddSkuService addSkuService = new AddSkuService();
        Sku sku= addSkuService.getSkuById(setId);

        confirmOrderVO.setSpu_img("/front/img/demo/shop/product/E4.jpg");
        confirmOrderVO.setSpu_name(sku.getId());

//        此处如果传的是shu属性及属性值
        List<String> sku_name = new ArrayList<String>();
        sku_name.add(request.getParameter("cosku"));
        confirmOrderVO.setSku_name(sku_name);
        confirmOrderVO.setNums(new BigDecimal(request.getParameter("count")));
        confirmOrderVO.setUnitPrice(new BigDecimal(request.getParameter("price")));
//        计算商品总价
        BigDecimal price = confirmOrderVO.getUnitPrice().multiply(confirmOrderVO.getNums());
        confirmOrderVO.setPrice(price);
//        confirmOrderVO.setOrderPrice(price.add(new BigDecimal("10")));
        confirmOrderVO.setOrderPrice(price);
        return confirmOrderVO;
    }

    /**
     * 进入确认订单页面
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void showConfirmOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("login-info");
        if(member == null){
            response.getWriter().write(request.getContextPath()+"/front/login.jsp");
            return;
        }
        List<MemberAddress> memberAddressess = this.findAlladdress(request,response);

//        直接点击购买进入的方式
        ConfirmOrderVO confirmOrderVO = new ConfirmOrderVO();
        String setId = request.getParameter("sku_id");
        AddSkuService addSkuService = new AddSkuService();
        Sku sku= addSkuService.getSkuById(setId);
        SkuImageMapper skuImageMapper = sqlSession.getMapper(SkuImageMapper.class);
        SkuImg skuImg = skuImageMapper.findUrlBySkuId(setId);
        String imgUrl = skuImg.getUrl();
        confirmOrderVO.setSpu_img(imgUrl);
        session.setAttribute("setId",setId);
        confirmOrderVO.setSpu_name(sku.getName());
        List<String> sku_name = new ArrayList<String>();
        sku_name.add(sku.getDescription());
        confirmOrderVO.setSku_name(sku_name);
        confirmOrderVO.setNums(new BigDecimal(request.getParameter("count")));
        confirmOrderVO.setUnitPrice(new BigDecimal(request.getParameter("price")));
//        计算商品总价
        BigDecimal price = confirmOrderVO.getUnitPrice().multiply(confirmOrderVO.getNums());
        confirmOrderVO.setPrice(price);
//        查看session中是否存在运费信息
        confirmOrderVO.setPostPrice(new BigDecimal("0"));
        confirmOrderVO.setOrderPrice(price);
        session.setAttribute("memberAddressess",memberAddressess);
        session.setAttribute("confirmOrderVO",confirmOrderVO);
//        request.getRequestDispatcher("/front/checkout.jsp").forward(request, response);
        response.getWriter().write(request.getContextPath()+"/front/checkout.jsp");
//        response.sendRedirect(request.getContextPath()+"/front/checkout.jsp");
    }

    /**
     * 从购物车进入确认订单页面
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void showConfirmOrder2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("login-info");
        if(member == null){
            response.getWriter().write(request.getContextPath()+"/front/login.jsp");
            return;
        }
        List<MemberAddress> memberAddressess = this.findAlladdress(request,response);
        session.setAttribute("memberAddressess",memberAddressess);
        List<ConfirmOrderVO> confirmOrderVOs = new ArrayList<ConfirmOrderVO>();
        ConfirmOrderVO confirmOrderVO = new ConfirmOrderVO();
        AddSkuService addSkuService = new AddSkuService();
        SkuImageMapper skuImageMapper = sqlSession.getMapper(SkuImageMapper.class);
        // 获取session购物车传过来的对象集合
//        List<购物车商品对象> 购物车商品对象s = session.getAttributeNames("购物车对象的集合");
        BigDecimal orderPrice = new BigDecimal("0");
//        for(购物车商品对象(单个):购物车商品对象s){
//            String setId = 购物车商品对象.getId(); //sku_id
//            Sku sku= addSkuService.getSkuById(setId);
//            String imgUrl = skuImageMapper.findUrlBySkuId(setId).getUrl();
//            confirmOrderVO.setSpu_img(imgUrl);
//            confirmOrderVO.setSpu_name(sku.getName());
//            List<String> sku_name = new ArrayList<String>();
//            sku_name.add(sku.getDescription());
//            confirmOrderVO.setSku_name(sku_name);
//            confirmOrderVO.setNums(new BigDecimal(购物车商品对象.get数量()));
//            confirmOrderVO.setUnitPrice(new BigDecimal(购物车商品对象.get单价()));
//            //        计算商品总价
//            BigDecimal price = confirmOrderVO.getUnitPrice().multiply(confirmOrderVO.getNums());
//            confirmOrderVO.setPrice(price);
//            confirmOrderVO.setPostPrice(new BigDecimal("0"));
//            confirmOrderVO.setOrderPrice(price.add(orderPrice));
//            confirmOrderVOs.add(confirmOrderVO);
//            orderPrice = confirmOrderVO.getOrderPrice();
//            session.setAttribute("orderPrice",orderPrice);
//        }
        session.setAttribute("confirmOrderVOs",confirmOrderVOs);
        response.getWriter().write(request.getContextPath()+"/front/checkout2.jsp");
    }

    /**
     * 新增收货地址
     * @param request
     * @param response
     * @return 返回数据更新的页面
     * @throws ServletException
     * @throws IOException
     */
    public String addAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("login-info");
        MemberAddress memberAddress = new MemberAddress();
        memberAddress.setMember_id(member.getId());
        memberAddress.setSpecific_address(request.getParameter("address"));
        memberAddress.setConsignee_name(request.getParameter("name"));
        memberAddress.setPhone(request.getParameter("phone"));
        CheckoutService checkoutService = new CheckoutServiceImpl();
        int valid = checkoutService.addAddress(memberAddress);
        if(valid > 0){
            List<MemberAddress> memberAddressess = this.findAlladdress(request,response);
            request.setAttribute("memberAddressess",memberAddressess);
            return "/front/checkout-Form.jsp";
        }
        return "/front/checkout-Form.jsp";
    }

    /**
     * 新增收货地址（购物车）
     * @param request
     * @param response
     * @return 返回数据更新的页面
     * @throws ServletException
     * @throws IOException
     */
    public String addAddress2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("login-info");
        MemberAddress memberAddress = new MemberAddress();
        memberAddress.setMember_id(member.getId());
        memberAddress.setSpecific_address(request.getParameter("address"));
        memberAddress.setConsignee_name(request.getParameter("name"));
        memberAddress.setPhone(request.getParameter("phone"));
        CheckoutService checkoutService = new CheckoutServiceImpl();
        int valid = checkoutService.addAddress(memberAddress);
        if(valid > 0){
            List<MemberAddress> memberAddressess = this.findAlladdress(request,response);
            request.setAttribute("memberAddressess",memberAddressess);
            return "/front/checkout-Form2.jsp";
        }
        return "/front/checkout-Form2.jsp";
    }

    /**
     * 修改收货地址
     * @param request
     * @param response
     * @return 返回更新数据后的页面
     * @throws ServletException
     * @throws IOException
     */
    public String updateAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("login-info");
        MemberAddress memberAddress = new MemberAddress();
        memberAddress.setId(request.getParameter("id"));
        memberAddress.setMember_id(member.getId());
        memberAddress.setSpecific_address(request.getParameter("address"));
        memberAddress.setConsignee_name(request.getParameter("name"));
        memberAddress.setPhone(request.getParameter("phone"));
        CheckoutService checkoutService = new CheckoutServiceImpl();
        int valid = checkoutService.updateAddress(memberAddress);
        System.out.println(valid);
        if(valid > 0){
            List<MemberAddress> memberAddressess = this.findAlladdress(request,response);
            request.setAttribute("memberAddressess",memberAddressess);
            return "/front/checkout-Form.jsp";
        }
        return "/front/checkout-Form.jsp";
    }

    /**
     * 修改收货地址（购物车）
     * @param request
     * @param response
     * @return 返回更新数据后的页面
     * @throws ServletException
     * @throws IOException
     */
    public String updateAddress2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        Member member = (Member)session.getAttribute("login-info");
        MemberAddress memberAddress = new MemberAddress();
        memberAddress.setId(request.getParameter("id"));
        memberAddress.setMember_id(member.getId());
        memberAddress.setSpecific_address(request.getParameter("address"));
        memberAddress.setConsignee_name(request.getParameter("name"));
        memberAddress.setPhone(request.getParameter("phone"));
        CheckoutService checkoutService = new CheckoutServiceImpl();
        int valid = checkoutService.updateAddress(memberAddress);
        System.out.println(valid);
        if(valid > 0){
            List<MemberAddress> memberAddressess = this.findAlladdress(request,response);
            request.setAttribute("memberAddressess",memberAddressess);
            return "/front/checkout-Form2.jsp";
        }
        return "/front/checkout-Form2.jsp";
    }

    /**
     * 获取收货地址
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void confirmAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        String addressId = request.getParameter("addressId");
        session.setAttribute("addressId",addressId);
    }

    /**
     * 获取快递方式
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public String confirmExpress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        String postPrice = request.getParameter("expressVal");
        session.setAttribute("postPrice",postPrice);
        ConfirmOrderVO confirmOrderVO = (ConfirmOrderVO)session.getAttribute("confirmOrderVO");
        System.out.println(!"0".equals(postPrice));
        confirmOrderVO.setOrderPrice(confirmOrderVO.getPrice().add(new BigDecimal(postPrice)));
        session.setAttribute("confirmOrderVO",confirmOrderVO);
        return "/front/checkout-Form.jsp";
    }

    /**
     * 获取快递方式（购物车）
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public String confirmExpress2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        String postPrice = request.getParameter("expressVal");
        session.setAttribute("postPrice",postPrice);
        ConfirmOrderVO confirmOrderVO = (ConfirmOrderVO)session.getAttribute("confirmOrderVO");
        System.out.println(!"0".equals(postPrice));
        confirmOrderVO.setOrderPrice(confirmOrderVO.getPrice().add(new BigDecimal(postPrice)));
        session.setAttribute("confirmOrderVO",confirmOrderVO);
        return "/front/checkout-Form2.jsp";
    }

    /**
     * 创建订单
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void createOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ConfirmOrderVO confirmOrderVO = (ConfirmOrderVO)session.getAttribute("confirmOrderVO");
        CheckoutService checkoutService = new CheckoutServiceImpl();
        Order order = new Order();
        Member member = (Member)session.getAttribute("login-info");
        order.setMember_id(member.getId());
        String addressId = (String)session.getAttribute("addressId");
        order.setMember_address_id(addressId);
        session.removeAttribute("addressId");
        order.setCreat_time(new Date());
        order.setTotal_price(confirmOrderVO.getPrice());
        String postPrice = (String)session.getAttribute("postPrice");
        order.setPost_price(new BigDecimal(postPrice));
        order.setPayment(confirmOrderVO.getOrderPrice());
        session.removeAttribute("postPrice");

        String paymentayWayId = request.getParameter("Payment");
        if("1".equals(paymentayWayId)){
            order.setPayment_way_id("1");
        }else if("2".equals(paymentayWayId)){
            order.setPayment_way_id("2");
        }else{
            order.setPayment_way_id("3");
        }

        order.setStatus("1");
        int OrderCreatevalid = checkoutService.insertOrder(order);
        OrderItem orderItem = new OrderItem();
        orderItem.setOrder_id(order.getId());
//        此处Sku_id需要前面页面给的数据
        String setId = (String)session.getAttribute("setId");
        orderItem.setSku_id(setId);
        orderItem.setNums(confirmOrderVO.getNums());
        int OrderItemCreatevalid = checkoutService.insertOrderItem(orderItem);
        response.sendRedirect("/front/payment.jsp");
    }

    /**
     * 购物车创建订单
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void createOrder2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        List<ConfirmOrderVO> confirmOrderVOs = (List<ConfirmOrderVO>)session.getAttribute("confirmOrderVOs");
//        ConfirmOrderVO confirmOrderVO = (ConfirmOrderVO)session.getAttribute("confirmOrderVO");
        CheckoutService checkoutService = new CheckoutServiceImpl();
        Order order = new Order();
        Member member = (Member)session.getAttribute("login-info");
        String addressId = (String)session.getAttribute("addressId");
        OrderItem orderItem = new OrderItem();
        for(ConfirmOrderVO confirmOrderVO:confirmOrderVOs){
            order.setMember_id(member.getId());

            order.setMember_address_id(addressId);

            order.setCreat_time(new Date());
            order.setTotal_price(confirmOrderVO.getPrice());
            String postPrice = (String)session.getAttribute("postPrice");
            order.setPost_price(new BigDecimal(postPrice));
            order.setPayment(confirmOrderVO.getOrderPrice());
            session.removeAttribute("postPrice");


            String paymentayWayId = request.getParameter("Payment");
            if("1".equals(paymentayWayId)){
                order.setPayment_way_id("1");
            }else if("2".equals(paymentayWayId)){
                order.setPayment_way_id("2");
            }else{
                order.setPayment_way_id("3");
            }

            order.setStatus("1");
            int OrderCreatevalid = checkoutService.insertOrder(order);
            orderItem.setOrder_id(order.getId());
//        此处Sku_id需要前面页面给的数据
            String setId = (String)session.getAttribute("setId");
            orderItem.setSku_id(setId);
            orderItem.setNums(confirmOrderVO.getNums());
        }

        session.removeAttribute("addressId");
        int OrderItemCreatevalid = checkoutService.insertOrderItem(orderItem);
        response.sendRedirect("/front/payment.jsp");
    }


}
