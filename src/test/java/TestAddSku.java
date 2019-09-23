import com.cyxz.cyshop.domain.Spu;
import com.cyxz.cyshop.service.AddSkuService;
import com.cyxz.cyshop.web.util.ConSkuUtils;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName TestAddSku
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2012:16
 */
public class TestAddSku {
    //    public static void main(String[] args) {
//        String model_id = "15";
//
//        List<String> attriNames = getAttri(model_id);
//        System.out.println(attriNames);
//        List<String>[] values = new List[attriNames.size()];
//        int i = 0;
////        String na : attriNames
//        for (String na : attriNames) {
//            List<String> value = getValue(model_id, na);
//            for (String s : value) {
//                System.out.println(s);
//            }
//            System.out.println("==========");
//            values[i++] = value;
//        }
//
//        System.out.println(Arrays.toString(values));
//
//        List<String[]> cos = ConSkuUtils.coSkus(values);
//        for (String[] strs : cos) {
//            System.out.println(Arrays.toString(strs));
//        }
//
//
//    }
    public static void main(String[] args) {
        Spu spu = new Spu();
        spu.setCatalog_1_id("1");
        spu.setCatalog_2_id("1");
        spu.setCatalog_3_id("1");
        spu.setSpu_description("商品描述");
        spu.setSpu_name("商品名字");
        insertSpu(spu);
    }

    public static List<String> getAttri(String model_id) {
        AddSkuService addSkuService = new AddSkuService();
        List<String> attris = addSkuService.getAttri(model_id);
        return attris;
    }


    public static List<String> getValue(String model_id, String name) {
        AddSkuService addSkuService = new AddSkuService();
        List<String> values = addSkuService.getValue(model_id, name);
        return values;
    }

    public static void insertSpu(Spu spu) {
        AddSkuService addSkuService = new AddSkuService();
        String id = addSkuService.insertSpu(spu);
    }
}
