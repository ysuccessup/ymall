package com.ymall.sso.service;

import com.ymall.common.vo.SysResult;
import com.ymall.sso.pojo.User;

public interface UserService {

	SysResult check(String param, Integer type);

	String queryUserByTicket(String ticket);

	String login(String userName, String passwd);

	boolean register(User user);

}
