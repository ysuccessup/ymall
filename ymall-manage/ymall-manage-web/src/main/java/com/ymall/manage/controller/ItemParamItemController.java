package com.ymall.manage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ymall.common.vo.SysResult;
import com.ymall.manage.pojo.ItemParamItem;
import com.ymall.manage.service.ItemParamItemService;

@RequestMapping("item/param/item")
@Controller
public class ItemParamItemController {
    
    @Autowired
    private ItemParamItemService itemParamItemService;

    /**
     * 根据商品ID查询商品规格数据
     * @param itemId
     * @return
     */
    @RequestMapping("query/{itemId}")
    @ResponseBody
    public SysResult queryParamByItemId(@PathVariable("itemId") Long itemId) {
        ItemParamItem itemParamItem = new ItemParamItem();
        itemParamItem.setItemId(itemId);
        itemParamItem = itemParamItemService.queryByWhere(itemParamItem);
        return SysResult.oK(itemParamItem);
    }

}
