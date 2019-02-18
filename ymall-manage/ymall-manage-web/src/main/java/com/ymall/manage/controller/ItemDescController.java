package com.ymall.manage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ymall.common.vo.SysResult;
import com.ymall.manage.pojo.ItemDesc;
import com.ymall.manage.service.ItemDescService;

@RequestMapping("/item/query/item")
@Controller
public class ItemDescController {
	
	@Autowired
	private ItemDescService itemDescService;
	
	/**
     * 根据商品ID查询商品规格数据
     * @param itemId
     * @return
     */
    @RequestMapping("desc/{itemId}")
    @ResponseBody
    public SysResult queryParamByItemId(@PathVariable("itemId") Long itemId) {
    	ItemDesc itemDesc = new ItemDesc();
    	itemDesc.setItemId(itemId);
    	itemDesc = itemDescService.queryByWhere(itemDesc);
        return SysResult.oK(itemDesc);
    }
	
}
