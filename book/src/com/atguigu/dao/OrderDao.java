package com.atguigu.dao;

import com.atguigu.pojo.Order;

/**
 * @author 书
 * @date 2021/2/26 - 15:50
 */
public interface OrderDao {
    public int saveOrder(Order order);
}
