package com.ymall.manage.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.ymall.common.vo.EasyUIResult;
import com.ymall.manage.mapper.ItemMapper;
import com.ymall.manage.pojo.Item;
import com.ymall.manage.pojo.ItemDesc;
import com.ymall.manage.pojo.ItemParamItem;
import com.ymall.manage.service.ItemDescService;
import com.ymall.manage.service.ItemParamItemService;
import com.ymall.manage.service.ItemService;

@Service
public class ItemService extends BaseService<Item> {

	/*
	 * 事务的嵌套：Service中注入Service
	 * spring事务的传播机制，默认当有当前ItemService事务时，调用ItemDescService时
	 * ，会直接使用ItemService的事务。
	 */
	@Autowired
	private ItemDescService itemDescService;
	
	/*@Autowired
	private HttpClientService httpClientService;*/
    
    @Autowired
    private ItemParamItemService itemParamItemService;

	@Autowired
	private ItemMapper itemMapper;
	
	/*@Autowired
	private RabbitTemplate rabbitTemplate;*/
	
	/*@Autowired
	private static final ObjectMapper MAPPER = new ObjectMapper();*/
	
    public void saveItem(Item item, String desc, String itemParams) {
        // 保存商品数据到数据库
        super.save(item);

        // 保存商品描述数据
        ItemDesc itemDesc = new ItemDesc();
        itemDesc.setItemId(item.getId());
        itemDesc.setItemDesc(desc);
        itemDesc.setCreated(new Date());
        itemDesc.setUpdated(itemDesc.getCreated());
        // 保存商品描述数据到数据库
        itemDescService.save(itemDesc);
        
        // 保存商品规格数据
        ItemParamItem itemParamItem = new ItemParamItem();
        itemParamItem.setItemId(item.getId());
        itemParamItem.setParamData(itemParams);
        itemParamItem.setCreated(new Date());
        itemParamItem.setUpdated(itemParamItem.getCreated());        
        itemParamItemService.save(itemParamItem);
        
        //发送新增消息到RabbitMQ中
        //rabbitTemplate.convertAndSend("insert", item.getId());
    }

	/**
	 * 查询商品列表
	 * 
	 * @param page
	 * @param rows
	 * @return
	 */
	public EasyUIResult queryList(Integer page, Integer rows) {
		PageHelper.startPage(page, rows, true);// 设置分页信息

		List<Item> items = itemMapper.queryListOrderByUpdated();// 按照更新时间倒序排序
		PageInfo<Item> pageInfo = new PageInfo<Item>(items);

		return new EasyUIResult(pageInfo.getTotal(), pageInfo.getList());
	}

	/**
	 * 更新商品数据
	 * 
	 * @param item
	 * @param desc
	 */
	public void updateItem(Item item, String desc, String itemParams) {
		item.setUpdated(new Date());

		item.setCreated(null);// 强制设置为null
		super.updateSelective(item);

		// 更新商品描述数据
		ItemDesc itemDesc = new ItemDesc();
		itemDesc.setUpdated(new Date());
		itemDesc.setItemId(item.getId());
		itemDesc.setItemDesc(desc);
		itemDescService.updateSelective(itemDesc);
        
        //更新规格参数数据
        ItemParamItem itemParamItem = new ItemParamItem();
        itemParamItem.setItemId(item.getId());
        itemParamItem.setParamData(itemParams);
        
        itemParamItemService.updateParamByItemId(itemParamItem);

        /*	切换到下面的MQ方式
        //通知更新其他系统中的缓存数据
        String url = "http://www.ymall.com/service/item/updateRedis/"+item.getId();
        try {
			httpClientService.doGet(url);
		} catch (Exception e) {
			e.printStackTrace();
		}
        
        //通知更新solr中的数据
        String searchUrl = "http://search.ymall.com/update";
        try {
			httpClientService.doPostJson(searchUrl, MAPPER.writeValueAsString(item));
		} catch (Exception e) {
			e.printStackTrace();
		}
		*/
        
        //发送更新消息到RabbitMQ中
        //rabbitTemplate.convertAndSend("update", item.getId());
        
	}

}
