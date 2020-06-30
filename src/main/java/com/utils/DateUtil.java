package com.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 赵宇(zy)
 * @create 2020-06-10 16:03
 */
public class DateUtil {
    public static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

    public static Date stringToDate(String str){
        Date date = null;
        try {
            date = sdf.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public static String dateToString(Date date){
        return sdf.format(date);
    }
}
