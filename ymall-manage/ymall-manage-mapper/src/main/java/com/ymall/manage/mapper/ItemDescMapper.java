package com.ymall.manage.mapper;

import com.ymall.manage.mapper.base.mapper.SysMapper;
import com.ymall.manage.pojo.ItemDesc;

public interface ItemDescMapper extends SysMapper<ItemDesc>{

	ItemDesc queryById(Long itemId);

}
