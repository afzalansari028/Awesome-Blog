package com.blog.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.blog.dao.UserRepository;
import com.blog.model.User;

@Service
@Transactional
public class UserService {
   @Autowired
	private static UserRepository userRepository;
	
	private static JdbcTemplate jdbcTemp;

	public UserService(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}
   
	public void createUser(User user) {
		 this.userRepository.save(user);
	}
	public static List<User> ShowAllUsers(){
		List<User> users = jdbcTemp.query("SELECT * FROM USER_DETAILS", new RowMapper<User>() {

			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				
				user.setId(Integer.parseInt(rs.getString("userId")));
				user.setFirstName(rs.getString("username"));


				return user;
			}

		});
		return users;
	}
}