package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.domain.CartDomain;
import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.service.CartServie;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * 罗海
 */
@WebServlet("/operate/cart")
public class CartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        // 搞个假数据，为用户的id
//        String memberId = "2";
        //获取用户登录的信息
        HttpSession session = request.getSession();
        Member member = (Member) session.getAttribute("login-info");

        CartServie cartServie = new CartServie();

        List<CartDomain> cartDomains = cartServie.selectCartById(member.getId());

        session.setAttribute("cartDomain",cartDomains);


        for(CartDomain cartDomain : cartDomains){
            System.out.println(cartDomain);
        }
        response.sendRedirect(request.getContextPath() + "/front/cart.jsp");
    }
}
