package com.blog.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.blog.model.ActiveUsers;
import com.blog.model.User;

@Component
public interface UserDao {
	public List<ActiveUsers> userList(String username);
//	public List<User> allUserList();
	public void like(int id);
}
