package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.domain.MemberAddress;
import com.cyxz.cyshop.service.CheckoutService;
import com.cyxz.cyshop.service.impl.CheckoutServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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
@WebServlet("/views/checkout")
public class CheckoutServlet extends BaseServlet{

    public void findAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        CheckoutServlet checkoutServlet = new CheckoutServlet();
        Member member1 = new Member();
        member1.setId("5");
        member1.setAccount("123");
        member1.setPassword("123");
        member1.setName("小桐桐");
        member1.setStatus("1");
        member1.setPhone("110");
        session.setAttribute("login-info",member1);

//        接收session中的登陆信息
        Member member = (Member)session.getAttribute("login-info");
        String id = member.getId();
        CheckoutService checkoutService = new CheckoutServiceImpl();
        List<MemberAddress> memberAddressess = checkoutService.findAderessByMemberId(id);
        request.setAttribute("memberAddressess",memberAddressess);
        request.getRequestDispatcher("/front/checkout.jsp").forward(request, response);
    }

    public void AddAddress(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
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
            System.out.println("进来了");
            this.findAddress(request,response);
        }
    }
}
