package com.cyxz.cyshop.web.util;

import java.util.ArrayList;
import java.util.List;

/**
 * @version 1.0.0
 * @ClassName ConSkuUtils
 * @Description 组合Sku工具类
 * @Author Administrator
 * @date 2019/9/209:45
 */
public class ConSkuUtils {
    /**
     * 传入不同属性集合，进行排列组合，返回组合成数组集合
     * @param values
     * @return
     */
    public static List<String[]> coSkus(List<String>... values) {
        List<String[]> coSkus = new ArrayList<>();
        int layer = values.length;
        switch (layer) {
            case 1:

                for (String str : values[0]) {
                    String[] coSku = {str};
                    coSkus.add(coSku);
                }

                break;
            case 2:
                for (String str1 : values[0]) {
                    for (String str2 : values[1]) {
                        String[] coSku = {str1,str2};
                        coSkus.add(coSku);
                    }
                }
                break;
            case 3:
                for (String str1 : values[0]) {
                    for (String str2 : values[1]) {
                        for (String str3 : values[2]) {
                            String[] coSku = {str1,str2,str3};
                            coSkus.add(coSku);
                        }
                    }
                }
                break;
            case 4:
                for (String str1 : values[0]) {
                    for (String str2 : values[1]) {
                        for (String str3 : values[2]) {
                            for (String str4 : values[3]) {
                                String[] coSku = {str1,str2,str3,str4};
                                coSkus.add(coSku);
                            }
                        }
                    }
                }
                break;
            case 5:
                for (String str1 : values[0]) {
                    for (String str2 : values[1]) {
                        for (String str3 : values[2]) {
                            for (String str4 : values[3]) {
                                for (String str5 : values[4]) {
                                    String[] coSku = {str1,str2,str3,str4,str5};
                                    coSkus.add(coSku);
                                }
                            }
                        }
                    }
                }
                break;

        }


        return coSkus;
    }
}
