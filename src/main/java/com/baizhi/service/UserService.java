package com.baizhi.service;

import com.baizhi.entity.User;

public interface UserService {

	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	User Login(User user);

}
