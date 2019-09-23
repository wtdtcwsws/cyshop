package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 罗海
 */
@WebServlet("/verify/member")
public class loginVerifyServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String account = request.getParameter("account");
        String password = request.getParameter("password");

        MemberService memberService = new MemberService();

        // 创建一个集合接收数据库所有的用户数据
        List<Member> members = memberService.selectMember();
        // 创建一个布尔值，用于验证失败的时候发送值给ajax
        boolean data = true;
        for(Member member : members){
            if(member.getAccount().equals(account) && member.getPassword().equals(password)){
                response.sendRedirect("index.jsp");
                request.getSession().setAttribute("login-info",member);
                data = false;
                break;
            }
        }
        if (data){
            response.getWriter().write("true");
        }

    }
}
