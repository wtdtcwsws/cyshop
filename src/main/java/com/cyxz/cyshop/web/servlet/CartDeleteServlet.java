package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.service.CartServie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 罗海
 */
@WebServlet("/delete/cart")
public class CartDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String cartId = request.getParameter("cartId");
        System.out.println(cartId);
        CartServie cartServie = new CartServie();

        Integer num = cartServie.deleteCartByID(cartId);

        System.out.println(num);

        if (num > 0){
            response.getWriter().write("chenggong");
        }else {
            response.getWriter().write("shibai");
        }

    }
}
