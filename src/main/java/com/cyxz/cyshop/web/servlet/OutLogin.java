package com.cyxz.cyshop.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/23
 * @time16:25
 * @place 西部国际金融中心
 */
@WebServlet("/out")
public class OutLogin  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("login-info");//移除登录信息
        resp.sendRedirect(req.getContextPath()+"/front/index.jsp");//重定向到主页
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
