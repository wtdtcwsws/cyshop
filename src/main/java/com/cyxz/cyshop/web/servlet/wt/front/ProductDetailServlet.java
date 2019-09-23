package com.cyxz.cyshop.web.servlet.wt.front;

import com.cyxz.cyshop.domain.*;
import com.cyxz.cyshop.service.AddSkuService;
import com.cyxz.cyshop.service.OrderService;
import com.cyxz.cyshop.service.SpuListService;
import com.cyxz.cyshop.web.servlet.BaseServlet;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.Console;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName ProductDetailServlet
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2220:51
 */
@WebServlet("/product")
public class ProductDetailServlet extends BaseServlet {
    public void detail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("detail");
        String spu_id = request.getParameter("spu_id");
        System.out.println(spu_id);
        //通过spuid找到spu对象，与对应的sku对象数组
        HttpSession session = request.getSession();
        SpuListService spuListService = new SpuListService();
        AddSkuService addSkuService = new AddSkuService();
        Spu spu = spuListService.getSpuById(spu_id);
        System.out.println(spu);
        List<Sku> skus = addSkuService.getSkusBySpuId(spu_id);
        System.out.println(skus);
        session.setAttribute("spu_detail",spu);
        session.setAttribute("spu_skus", skus);
        response.sendRedirect(request.getContextPath()+"/front/product.jsp");

    }
    public void selectSku(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String skuId = request.getParameter("skuId");
        AddSkuService addSkuService = new AddSkuService();
        Sku sku = addSkuService.getSkuById(skuId);
        ObjectMapper mapper = new ObjectMapper();
        response.getWriter().write(mapper.writeValueAsString(sku));

    }
    public void buy(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String skuId = request.getParameter("sku");
        String skuPirce = request.getParameter("skuPirce");
        String stock = request.getParameter("stock");

        BigDecimal price = new BigDecimal(skuPirce);
        String count = request.getParameter("count");
        int stockInt = Integer.parseInt(stock);
        int countInt = Integer.parseInt(count);
        if (stockInt < countInt) {
            response.getWriter().write("库存不足！");
        } else {
            //剩余库存
            int remain = stockInt - countInt;
            BigDecimal totalPrice = price.multiply(new BigDecimal(count));
            Member account = (Member)request.getSession().getAttribute("login-info");
            if (account == null) {
//            response.getWriter().write("请先登录账号！");
                account = new Member();
                account.setName("管理员");
                account.setAccount("admin");
                account.setPassword("123123");
                account.setPhone("13800001234");
                account.setId("32");
                account.setStatus("1");
                account.setLevel_id("0");
            }
            //创建订单
            OrderService orderService = new OrderService();
            Order order = new Order();
            order.setMember_id(account.getId());
            order.setMember_address_id("66");
            order.setStatus("1");
            order.setTotal_price(totalPrice);
            order.setPost_price(new BigDecimal("0"));
            order.setPayment(totalPrice);
            order.setPayment_way_id("1");
            int success = orderService.insertOrder(order);
            String order_id = order.getId();
            //组装订单项
            OrderItem orderItem = new OrderItem();
            orderItem.setOrder_id(order_id);
            orderItem.setNums(new BigDecimal(count));
            orderItem.setSku_id(skuId);

            int success2=orderService.insertOrderItem(orderItem);
            System.out.println(remain+"========"+skuId);
            if (success == 1 && success2 == 1) {
                response.getWriter().write("下单完成！");
                //库存减少
                AddSkuService addSkuService = new AddSkuService();
                addSkuService.subtractStock(remain + "", skuId);
                ServletContext appliction = request.getServletContext();
                List<Sku> skus =  addSkuService.selectSkus();
                appliction.setAttribute("skus",skus);
            }
        }


    }


}
