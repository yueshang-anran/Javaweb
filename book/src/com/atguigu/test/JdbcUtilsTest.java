package com.atguigu.test;

/**
 * @author 书
 * @date 2021/2/6 - 18:20
 */

import com.atguigu.utils.JdbcUtils;
import org.junit.Test;



public class JdbcUtilsTest {
    @Test
    public void test(){
        System.out.println(JdbcUtils.getConnection());
    }
}
