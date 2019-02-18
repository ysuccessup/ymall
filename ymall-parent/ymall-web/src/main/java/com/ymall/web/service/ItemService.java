package com.ymall.web.service;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ymall.common.service.HttpClientService;
import com.ymall.common.service.RedisService;
import com.ymall.common.spring.exetend.PropertyConfig;
import com.ymall.common.vo.SysResult;
import com.ymall.manage.pojo.ItemComment;
import com.ymall.manage.pojo.ItemDesc;
import com.ymall.manage.pojo.ItemParamItem;
import com.ymall.web.pojo.Item;

@Service
public class ItemService {

    @Autowired
    private HttpClientService httpClientService;

    @PropertyConfig
    private String MANAGE_7MALL;

    @Autowired
    private RedisService redisService;

    private static final ObjectMapper MAPPER = new ObjectMapper();

    private static final String REDIS_ITEM_KEY = "YMALL_WEB_ITEM_";

    private static final String REDIS_ITEM_DESC_KEY = "YMALL_WEB_ITEM_DESC_";
    
    private static final String REDIS_ITEM_PARAM_ITEM_KEY = "YMALL_WEB_ITEM_PARAM_ITEM_";
    
    public Item queryItemById(Long itemId) {
        String key = REDIS_ITEM_KEY + itemId;
        // 从缓存中命中
        try {
            String redisData = redisService.get(key);
            if (StringUtils.isNoneEmpty(redisData)) {
                return MAPPER.readValue(redisData, Item.class);
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        // 数据从后台管理系统中获取，通过Httpclient获取
        String url = MANAGE_7MALL + "/item/query/" + itemId;
        Item item = null;
        try {
            String jsonData = httpClientService.doGet(url);
            SysResult result = SysResult.formatToPojo(jsonData, Item.class);
            item = (Item) result.getData();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (null != item) {
            // 写入到缓存中
            try {
                redisService.set(key, MAPPER.writeValueAsString(item),60 * 60 * 24 * 10);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return item;
    }

    public ItemDesc queryItemDescByItemId(Long itemId) {
        String key = REDIS_ITEM_DESC_KEY + itemId;
        // 从缓存中命中
        try {
            String redisData = redisService.get(key);
            if (StringUtils.isNoneEmpty(redisData)) {
                return MAPPER.readValue(redisData, ItemDesc.class);
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        String url = MANAGE_7MALL + "/item/query/item/desc/" + itemId;
        ItemDesc itemDesc = null;
        try {
            String jsonData = httpClientService.doGet(url);
            SysResult result = SysResult.formatToPojo(jsonData, ItemDesc.class);
            itemDesc = (ItemDesc) result.getData();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (null != itemDesc) {
            // 写入到缓存中
            try {
                redisService.set(key, MAPPER.writeValueAsString(itemDesc),
                        60 * 60 * 24 * 10);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return itemDesc;
    }

    /**
     * 加载商品规格参数
     * 
     * @param itemId
     * @return
     */
    public ItemParamItem queryItemParamItemByItemId(Long itemId) {
        String key = REDIS_ITEM_PARAM_ITEM_KEY + itemId;
        // 从缓存中命中
        try {
            String redisData = redisService.get(key);
            if (StringUtils.isNoneEmpty(redisData)) {
                return MAPPER.readValue(redisData, ItemParamItem.class);
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        String url = MANAGE_7MALL + "/item/param/item/query/" + itemId;
        ItemParamItem itemParamItem = null;
        try {
            String jsonData = httpClientService.doGet(url);
            SysResult result = SysResult.formatToPojo(jsonData, ItemParamItem.class);
            itemParamItem = (ItemParamItem) result.getData();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (null != itemParamItem) {
            // 写入到缓存中
            try {
                redisService.set(key,  MAPPER.writeValueAsString(itemParamItem), 60 * 60 * 24 * 30);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return itemParamItem;
    }
    
    /**
     * 加载商品评论
     * @param itemId
     * @return
     */
	@SuppressWarnings("unchecked")
	public List<ItemComment> queryItemCommentByItemId(Long itemId) {
	        String url = MANAGE_7MALL + "/item/query/item/comment/" + itemId;
	        try {
	            String jsonData = httpClientService.doGet(url);
	            SysResult sysResult = SysResult.formatToList(jsonData, ItemComment.class);
	            return (List<ItemComment>) sysResult.getData();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return null;
	}

}
