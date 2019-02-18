package com.ymall.manage.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ymall.common.vo.EasyUIResult;
import com.ymall.common.vo.SysResult;
import com.ymall.manage.pojo.ItemParam;
import com.ymall.manage.service.ItemParamService;

@RequestMapping("/item/param")
@Controller
public class ItemParamController {

    @Autowired
    private ItemParamService itemParamService;

    @RequestMapping("list")
    @ResponseBody
    public EasyUIResult queryList(@RequestParam("page") Integer page, @RequestParam("rows") Integer rows) {
        PageHelper.startPage(page, rows);
        List<ItemParam> itemParams = itemParamService.queryAll();
        PageInfo<ItemParam> pageInfo = new PageInfo<ItemParam>(itemParams);
        return new EasyUIResult(pageInfo.getTotal(), pageInfo.getList());
    }

    @RequestMapping("query/itemcatid/{itemCatId}")
    @ResponseBody
    public SysResult queryItemParamByItemCatId(@PathVariable("itemCatId") Long itemCatId) {
        ItemParam itemParam = new ItemParam();
        itemParam.setItemCatId(itemCatId);
        return SysResult.oK(itemParamService.queryByWhere(itemParam));
    }

    @RequestMapping("save/{itemCatId}")
    @ResponseBody
    public SysResult saveItemParam(@PathVariable("itemCatId") Long itemCatId,
            @RequestParam("paramData") String paramData) {
        ItemParam itemParam = new ItemParam();
        itemParam.setItemCatId(itemCatId);
        itemParam.setParamData(paramData);
        itemParam.setCreated(new Date());
        itemParam.setUpdated(itemParam.getCreated());

        itemParamService.save(itemParam);
        return SysResult.oK();
    }

}
