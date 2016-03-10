package com.dao;

import java.util.List;

import com.bean.User;

public interface UserDao {
	boolean insertUser(User user); //添加用户
	boolean deleteUser(int id); //删除用户
	User selectUser(String username, String password); //根据用户名密码查找用户
	List<User> selectAllUser(); //查看所有用户
}
