package com.ymall.manage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ymall.manage.mapper.ItemDescMapper;
import com.ymall.manage.pojo.ItemDesc;
import com.ymall.manage.service.ItemDescService;

@Service
public class ItemDescService extends BaseService<ItemDesc>{

	@Autowired
	private ItemDescMapper itemDescMapper;
	
	public ItemDesc queryById(Long itemId) {
		ItemDesc itemDesc = itemDescMapper.queryById(itemId);
		return itemDesc;
	}

}
