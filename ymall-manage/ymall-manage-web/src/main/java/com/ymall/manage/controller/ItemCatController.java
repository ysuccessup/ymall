package com.ymall.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ymall.manage.pojo.ItemCat;
import com.ymall.manage.service.ItemCatService;


/**
 * 商品类目相关的业务逻辑处理
 *
 */
@RequestMapping("/item/cat")
@Controller
public class ItemCatController {

    @Autowired
    private ItemCatService itemCatService;

    @RequestMapping("list")
    @ResponseBody
    public List<ItemCat> queryList(@RequestParam(value = "id", defaultValue = "0") Long id) {
        return itemCatService.queryListById(id);
    }

}
