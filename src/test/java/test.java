import com.cyxz.cyshop.domain.CartDomain;
import com.cyxz.cyshop.domain.Member;
import com.cyxz.cyshop.service.CartServie;
import com.cyxz.cyshop.service.FrontOrderItemService;
import com.cyxz.cyshop.service.impl.FrontOrderItemServiceImpl;
import com.cyxz.cyshop.viewobject.OrderItemVO;

import javax.servlet.http.HttpSession;
import java.util.List;

public class test {

    public static void main(String[] args) {
        FrontOrderItemService frontOrderItemService = new FrontOrderItemServiceImpl();
        String orderId = "79";
        int deleteValid = frontOrderItemService.deleteOrder(orderId);
        System.out.println(deleteValid);
        List<OrderItemVO> orderItemVOs = frontOrderItemService.findAllOrder("6");
        for (OrderItemVO o : orderItemVOs ) {

            System.out.println(o);
        }
        orderId = "78";
        int deleteValid2= frontOrderItemService.deleteOrder(orderId);
        System.out.println(deleteValid2);
        System.out.println("------------------------------华丽的分割线————————————————————————");
        List<OrderItemVO> orderItemVOs2 = frontOrderItemService.findAllOrder("6");
        for (OrderItemVO o : orderItemVOs2 ) {

            System.out.println(o);
        }
//        request.setAttribute("orderItemVOs",orderItemVOs);
//        response.getWriter().write(request.getContextPath()+"/front/orderItem.jsp");
//        request.getRequestDispatcher("/front/orderItemTable.jsp").forward(request,response);
//        }
    }
}