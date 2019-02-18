package com.ymall.manage.mapper;

import java.util.List;

import com.ymall.manage.mapper.base.mapper.SysMapper;
import com.ymall.manage.pojo.Item;

public interface ItemMapper extends SysMapper<Item>{

    public List<Item> queryListOrderByUpdated();

}
