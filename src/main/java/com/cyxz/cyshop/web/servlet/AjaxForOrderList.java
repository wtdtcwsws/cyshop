package com.cyxz.cyshop.web.servlet;

import com.cyxz.cyshop.common.PageBean;
import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author 高勇
 * @version 1.0.0
 * @date 2019/9/23
 * @time15:41
 * @place 西部国际金融中心
 */
@WebServlet("/view/AjaxForOrderList")
public class AjaxForOrderList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);


        /**
         * 根据分页的数据条数，当前页码，每页显示的条数，数据总条数构建分页需要的数据
         *
         * @param rows      分页显示的数据
         * @param pageIndex 当前显示的页码
         * @param pageSize  每页显示的条数
         * @param total     数据总条数
         */
        //获得页数
        String str_pageindex = req.getParameter("pageindex");
        int pageindex = 1;
        if(!(str_pageindex==null)){
            pageindex = Integer.parseInt(str_pageindex);
        }
        //设置每页显示条数
        int pageSize =  5;
        //总数据要查出来
        int total = orderMapper.getCount();
        List<Order> orders = orderMapper.selectView(pageindex-1,pageSize);//捞出order数据，这里只捞显示数据
        PageBean PBean = new PageBean(orders,pageindex,pageSize,total);
        req.setAttribute("PBean",PBean);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
