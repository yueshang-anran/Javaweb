package com.atguigu.service;

import com.atguigu.pojo.Cart;

/**
 * @author 书
 * @date 2021/2/26 - 18:58
 */
public interface OrderService {
    public String createOrder(Cart cart, Integer userId);
}
