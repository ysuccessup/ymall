package com.ymall.sso.mapper;

import org.apache.ibatis.annotations.Param;

import com.ymall.sso.pojo.User;

public interface UserMapper {

	 /**
     * 校验数据是否可用
     * 
     * @param param
     * @param string
     * @return
     */
    Integer check(@Param("param") String param, @Param("paramType") String paramType);

	void save(User user);

	User login(String userName);



}
