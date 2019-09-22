package com.cyxz.cyshop.web.util;

import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 罗海
 * 时间格式转换
 */

public class DateForMat {

    public String DateAndString(String time){
        Date date = new Date();
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        try {
            date = ft.parse(time);
        } catch (ParseException e1) {
            e1.printStackTrace();
        }
        String timeString = ft.format(date).toString();
        return timeString;
    }

    public String DateAndDate(Date time){
        SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String date = ft.format(time);
        return date;
    }

}
