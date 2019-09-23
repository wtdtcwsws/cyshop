import com.cyxz.cyshop.dao.SkuMapper;
import com.cyxz.cyshop.dao.orderDetailMapper;
import com.cyxz.cyshop.dao.orderMapper;
import com.cyxz.cyshop.domain.Order;
import com.cyxz.cyshop.domain.OrderItem;
import com.cyxz.cyshop.domain.Sku;
import com.cyxz.cyshop.util.MyBatisUtil;
import com.cyxz.cyshop.viewobject.OrderView;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

public class test{

    public static void main(String[] args) {
        SqlSession sqlSession = MyBatisUtil.getSqlSessionFactory().openSession();
        orderMapper orderMapper = sqlSession.getMapper(orderMapper.class);
        orderDetailMapper detailMapper = sqlSession.getMapper(orderDetailMapper.class);
        SkuMapper skulMapper = sqlSession.getMapper(SkuMapper.class);
        List<Order> orders = orderMapper.selectAll();//捞出order数据
        List<OrderView> orderViews = new ArrayList<OrderView>();//用来保存展示对象
//        这里需要组装页面展示对象
        for (Order order : orders) {
            List<OrderItem> items = detailMapper.findByOderID(order.getId());
            String productName = "商品：";
            for (OrderItem item : items) {
                Sku sku = skulMapper.findBySkuId(item.getSku_id());
                productName += "/" + sku.getName();
            }

            OrderView orderView = new OrderView();//创建一个对象用来接收属性
            orderView.setId(order.getId());
            orderView.setProductName(productName);
            orderView.setPayment(order.getPayment());
            orderView.setPost_price(order.getPost_price());
            orderView.setStatus(Integer.parseInt(order.getStatus()));
            orderView.setTotal_price(order.getTotal_price());
            orderViews.add(orderView);
            System.out.println(orderView.getId() + "编号/状态" + orderView.getStatus());
        }
    }
}