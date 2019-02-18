package com.ymall.manage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ymall.manage.mapper.ItemParamItemMapper;
import com.ymall.manage.pojo.ItemParamItem;

@Service
public class ItemParamItemService extends BaseService<ItemParamItem> {
    
    @Autowired
    private ItemParamItemMapper itemParamItemMapper;

    public void updateParamByItemId(ItemParamItem itemParamItem) {
        itemParamItemMapper.updateParamByItemId(itemParamItem);
    }

}
