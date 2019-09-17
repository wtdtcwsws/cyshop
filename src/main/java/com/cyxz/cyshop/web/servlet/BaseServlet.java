package com.cyxz.cyshop.web.servlet;


import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * @version 1.0.0
 * @ClassName BaseServlet
 * @Description 用来简化同类型请求的Servlet书写
 * @Author Administrator
 * @date 2019/9/1615:17
 */
public class BaseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        handleRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        handleRequest(request, response);
    }


    private void handleRequest(HttpServletRequest request, HttpServletResponse response) {


        // 通过请求的参数来确定需要调用的方法
        String methodParam = request.getParameter("method");
        try {

            // 获得当前的servlet中定义的所有方法
            Method[] methods = this.getClass().getDeclaredMethods();
            // 根据名称循环查找方法
            Method method = null;

            for (Method m :methods  ) {
                if(m.getName().equals(methodParam)){
                    method = m;
                    break;
                }
            }
            // 获得调用方法的参数
            Object[] param = new Object[method.getParameterCount()];
            Class[] types = method.getParameterTypes();

            for (int i = 0; i < param.length; i++) {
                if(HttpServletRequest.class.isAssignableFrom(types[i])){
                    param[i] = request;
                }else if(HttpServletResponse.class.isAssignableFrom(types[i])){
                    param[i] = response;
                }else if(ServletContext.class.isAssignableFrom(types[i])){
                    param[i] = request.getServletContext();
                }else if(HttpSession.class.isAssignableFrom(types[i])){
                    param[i] = request.getSession();
                }
            }
            Object result = method.invoke(this,param);

            String root = request.getServletContext().getInitParameter("viewPath");
            if(root == null){
                root = "/";
            }
            // 处理Servlet调用方法后执行的结果
            if(String.class.isAssignableFrom(method.getReturnType())){
                String url = result.toString();
                if(url.startsWith("redirect:")){
                    url = request.getContextPath() + root + url.substring(9);
                    response.sendRedirect( url);
                }else{
                    url = root + url;
                    request.getRequestDispatcher(url).forward(request, response);
                }
            }else if (result != null){
                this.responseJSON(response, result);
            }

        } catch (Exception e) {
            throw new RuntimeException("在" + this.getClass() + "没有找到名字为" + methodParam + "的方法");
        }

    }


    /**
     * 响应JSON数据给客户端
     * @param response
     * @param data
     * @throws IOException
     */
    public void responseJSON(HttpServletResponse response, Object data) throws IOException {

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValueAsString(data);

        // 发送响应的数据给客户端
        response.getWriter().write(mapper.writeValueAsString(data));
    }
}