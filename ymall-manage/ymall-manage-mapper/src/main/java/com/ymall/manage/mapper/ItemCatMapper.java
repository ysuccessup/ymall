package com.ymall.manage.mapper;

import com.ymall.manage.mapper.base.mapper.SysMapper;
import com.ymall.manage.pojo.ItemCat;

public interface ItemCatMapper extends SysMapper<ItemCat>{

    /**
     * 根据ID查询商品类目数据，parentId = id(参数)
     * 
     * @param id
     * @return
     */
    //List<ItemCat> queryListById(@Param("id") Long id);

}
