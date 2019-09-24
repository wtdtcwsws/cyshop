package com.cyxz.cyshop.web.util;

import java.io.File;

/**
 * @version 1.0.0
 * @ClassName PathSubUtils
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/2414:04
 */
public class PathSubUtils {
    /**
     * 将图片绝对路径转为相对路径
     * @param url
     * @return
     */
    public static String getImgPath(String url){
        //index为最后的“/”字符所在的位置
        int index=url.lastIndexOf(File.separator);
        //从最后的“/”字符的前一个位置向前找“/”的位置为此index
        index=url.lastIndexOf(File.separator,index-1);
        //从倒数第二的“/”字符的前一个位置向前找“/”的位置为此index
        index=url.lastIndexOf(File.separator,index-1);
        index=url.lastIndexOf(File.separator,index-1);
        //得到倒数第三个“/”之后的字符串
        String location=url.substring(index+1);
        return location;
    }

}
