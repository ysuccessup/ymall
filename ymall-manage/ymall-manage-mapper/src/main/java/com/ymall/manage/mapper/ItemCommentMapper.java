package com.ymall.manage.mapper;

import java.util.List;

import com.ymall.manage.pojo.ItemComment;

public interface ItemCommentMapper {
	
	List<ItemComment> queryItemCommentByItemId(Long itemId);
	
}
