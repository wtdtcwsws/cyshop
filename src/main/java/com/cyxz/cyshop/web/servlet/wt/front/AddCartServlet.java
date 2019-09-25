package com.cyxz.cyshop.web.servlet.wt.front;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.domain.ShoppingCartItem;
import com.cyxz.cyshop.service.CartServie;
import com.cyxz.cyshop.web.servlet.BaseServlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @version 1.0.0
 * @ClassName AddCartServlet
 * @Description 添加sku至购物车
 * @Author Administrator
 * @date 2019/9/2519:31
 */
@WebServlet("/cart")
public class AddCartServlet extends BaseServlet {
    /**
     * 添加商品至购物车
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void addCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sku_id = request.getParameter("sku_id");
        String count = request.getParameter("count");
        Member member = (Member) request.getSession().getAttribute("login-info");
        if (member == null) {
            response.getWriter().write("1");
            return;
        }
        String cart_id = member.getId();
//        addCartItem
        ShoppingCartItem shoppingCartItem = new ShoppingCartItem();
        shoppingCartItem.setCart_id(cart_id);
        shoppingCartItem.setNums(Integer.parseInt(count));
        shoppingCartItem.setSku_id(sku_id);

        CartServie cartServie = new CartServie();
        int success = cartServie.addCartItem(shoppingCartItem);
        if (success == 1) {
            response.getWriter().write("加入购物车成功");
        } else {
            response.getWriter().write("加入购物车失败");
        }
    }

}
