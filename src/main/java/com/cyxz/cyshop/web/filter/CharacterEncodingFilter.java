package com.cyxz.cyshop.web.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * @version 1.0.0
 * @ClassName CharacterEncodingFilter
 * @Description 设置请求响应字符编码过滤器
 * @Author Administrator
 * @date 2019/9/1614:56
 */
public class CharacterEncodingFilter implements Filter {
     private String encoding;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

        if (encoding == null) {
            encoding = "utf-8";
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        //设置请求相应编码
        request.setCharacterEncoding(encoding);
        response.setCharacterEncoding(encoding);
        //执行后续操作
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {

    }
}
