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
@WebServlet("/select/member")
public class selectMemberServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取web端用户输入的账号，在数据库中比对，查看是否相等
        // 获取账号
        String account = request.getParameter("account");
        // 获得数据库中的所有账号信息
        MemberService memberService = new MemberService();
        List<Member> members = memberService.selectMember();
        // 将用户输入的数据与数据库中的数据进行比对
        boolean data = false;
        for(Member member : members){
            if (member.getAccount().equals(account)){
                data = true;
                break;
            }
        }
        // 根据结构向客户端响应内容
        if(data){
            response.getWriter().write("true");
        }else {
            response.getWriter().write("false");
        }

    }
}
