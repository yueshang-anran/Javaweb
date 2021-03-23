package com.atguigu.dao;

import com.atguigu.pojo.Order;
import com.atguigu.pojo.OrderItem;

/**
 * @author 书
 * @date 2021/2/26 - 15:53
 */
public interface OrderItemDao {
    public int saveOrderItem(OrderItem orderItem);
}
