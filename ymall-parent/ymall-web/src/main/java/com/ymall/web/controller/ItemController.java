package com.ymall.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ymall.manage.pojo.ItemDesc;
import com.ymall.manage.pojo.ItemParamItem;
import com.ymall.web.pojo.Item;
import com.ymall.web.service.ItemService;

@RequestMapping("item")
@Controller
public class ItemController {

    @Autowired
    private ItemService itemService;

    @RequestMapping("{itemId}")
    public String showItem(@PathVariable("itemId") Long itemId,Model model) {
        // 查询商品信息
        Item item = itemService.queryItemById(itemId);
        String[] images = item.getImages();
        String[] BigImages = item.getBigImages();
        model.addAttribute("images", images);
        model.addAttribute("BigImages", BigImages);
        model.addAttribute("item", item);
        //加载商品描述信息
        ItemDesc itemDesc = itemService.queryItemDescByItemId(itemId);
        model.addAttribute("itemDesc", itemDesc);
        // 加载商品规格参数
        ItemParamItem itemParam = itemService.queryItemParamItemByItemId(itemId);
        model.addAttribute("itemParam", itemParam);
        //加载商品评论信息
        //List<ItemComment> itemComment = itemService.queryItemCommentByItemId(itemId);
        //model.addAttribute("itemComment", itemComment);
        return "goods-detail";
    }
    
}
