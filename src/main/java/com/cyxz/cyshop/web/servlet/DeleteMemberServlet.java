package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delete/member")
public class DeleteMemberServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String id = request.getParameter("id");

        Integer ids = Integer.valueOf(id);

        MemberService memberService = new MemberService();

        Integer nums = memberService.deleteMember(ids);

        response.getWriter().write("false");


    }
}

