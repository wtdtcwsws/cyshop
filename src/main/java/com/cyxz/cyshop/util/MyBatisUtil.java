package com.cyxz.cyshop.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * @version 1.0.0
 * @ClassName MyBatisUtil
 * @Description TODO
 * @Author Administrator
 * @date 2019/9/160:50
 */
public class MyBatisUtil {
    private static SqlSessionFactory sqlSessionFactory = null;

    public static SqlSessionFactory getSqlSessionFactory() {
        InputStream inputStream = null;
        if (sqlSessionFactory == null) {
            String resource = "mybatis.xml";
            try {
                sqlSessionFactory = new SqlSessionFactoryBuilder().build(Resources.getResourceAsStream(resource));
                return sqlSessionFactory;
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return sqlSessionFactory;
    }

}
