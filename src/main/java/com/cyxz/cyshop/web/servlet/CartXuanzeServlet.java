package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.domain.CartDomain;
import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.service.CartServie;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 罗海
 */
@WebServlet("/xuanze/cart")
public class CartXuanzeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        ObjectMapper objectMapper = new ObjectMapper();
        CartServie cartServie = new CartServie();
        List<CartDomain> cartDomains = new ArrayList<CartDomain>();
        Member member = (Member) session.getAttribute("login-info");

        String skuId = request.getParameter("skuId");
        String shuliangs = request.getParameter("shuliangs");

        List<String> skuIds = objectMapper.readValue(skuId, new TypeReference<List<String>>() {});
        List<String> shuliangss = objectMapper.readValue(shuliangs, new TypeReference<List<String>>() {});

        List<CartDomain> cartDomain = cartServie.selectCartById(member.getId());
        int i = 0;
        for (CartDomain x : cartDomain) {
            for (String s : skuIds) {
                if (x.getSku_id().equals(s)) {
                    x.setDescription(shuliangss.get(i));
                    System.out.println(shuliangss.get(i));
                    cartDomains.add(x);
                    i++;
                }
            }
        };
        session.setAttribute("zhyJJ",cartDomains);

        for(CartDomain c : cartDomains){
            System.out.println(c);
        };

        if(cartDomains.size() > 0){
            response.sendRedirect(request.getContextPath() + "/views/checkout?method=showConfirmOrder2");
        }else {
            response.getWriter().write("no");
        }


    }
}
