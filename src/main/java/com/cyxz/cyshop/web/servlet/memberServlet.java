package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.service.MemberService;
import jdk.nashorn.internal.ir.Labels;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/insert/member")
public class memberServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 1、获取用户提交的数据
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String level = request.getParameter("levelId");
        String phone = request.getParameter("phone");

        Member member = new Member();

        //将数据添加到member对象中
        member.setAccount(account);
        member.setPassword(password);
        member.setName(name);
        member.setLevel_id(level);
        member.setPhone(phone);

        // 得到添加数据到member方法
        MemberService memberService = new MemberService();
        Integer data = memberService.insertMember(member);
        // 2、验证数据库中是否存在该账号

        // 3、根据结构向客户端响应内容
        response.getWriter().write("false");

    }
}
