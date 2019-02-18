package com.ymall.manage.mapper;

import com.ymall.manage.mapper.base.mapper.SysMapper;
import com.ymall.manage.pojo.ItemParamItem;

public interface ItemParamItemMapper extends SysMapper<ItemParamItem>{

    /**
     * 更加商品id更新规格参数数据
     * @param itemParamItem
     */
    void updateParamByItemId(ItemParamItem itemParamItem);

}
