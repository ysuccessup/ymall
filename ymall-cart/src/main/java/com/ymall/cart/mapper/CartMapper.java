package com.ymall.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ymall.cart.pojo.Cart;


public interface CartMapper {
	 /**
     * 根据用户名id和商品id查询购物车数据
     * 
     * @param userId
     * @param itemId
     * @return
     */
    Cart queryCartByUserIdAndItemId(@Param("userId") Long userId, @Param("itemId") Long itemId);

    /**
     * 新增购物车数据
     * 
     * @param cart
     */
    void save(Cart newCart);

    /**
     * 修改商品数量
     * 
     * @param cart
     */
    void updateCartNum(Cart cart);

    /**
     * 根据用户id查询
     * 
     * @param userId
     * @return
     */
    List<Cart> queryCartList(Long userId);

    /**
     * 根据用户id、商品id修改数量
     * 
     * @param userId
     * @param itemId
     * @param num
     * @return
     */
    Integer updateCartNumByUserIdAndItemId(@Param("userId") Long userId, @Param("itemId") Long itemId,@Param("num") Integer num);

    /**
     * 删除
     * 
     * @param userId
     * @param itemId
     * @return
     */
    Integer delete(@Param("userId") Long userId, @Param("itemId") Long itemId);
    
    /**
     * 根据用户id、商品id查询购物车商品信息
     * @param userId
     * @param itemId
     * @return
     */
	Cart queryCartItem(@Param("userId") Long userId, @Param("itemId") Long itemId); 

}
