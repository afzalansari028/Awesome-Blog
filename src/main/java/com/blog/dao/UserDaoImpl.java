package com.blog.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.blog.model.ActiveUsers;
import com.blog.model.UploadData;

@Component
public class UserDaoImpl implements UserDao {
	
	private JdbcTemplate jdbcTemp;
	Connection con = null;

	public UserDaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}	

	@SuppressWarnings("deprecation")
	@Override
	public List<ActiveUsers> userList(String username) {
		List<ActiveUsers> list = jdbcTemp.query("SELECT * FROM USER_DETAILS WHERE USERNAME = ?",new Object[] {username}, new RowMapper<ActiveUsers>() {

			@Override
			public ActiveUsers mapRow(ResultSet rs, int rowNum) throws SQLException {
				ActiveUsers active_user = new ActiveUsers();
				
				active_user.setId(Integer.parseInt(rs.getString("userId")));
				active_user.setUsername(rs.getString("username"));
				active_user.setEmail(rs.getString("email"));
				active_user.setPhone(rs.getString("phone"));
				active_user.setNoOfPosts(Integer.parseInt(rs.getString("no_of_posts")));
				active_user.setFollowing(Integer.parseInt(rs.getString("following")));


				return active_user;
			}

		});
		return list;
	}

	
	public void like(int id) {
		
		String query="update posts set likes=likes+1  where post_id=? ";
		  try {
			  try {
				Class.forName("com.mysql.cj.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","king");
			  UploadData user=new UploadData();
			  
	            PreparedStatement ps = con.prepareStatement(query);
	            System.out.println("executed");
	            System.out.println(id);
	            ps.setInt(1, id);
	             
	            ps.executeUpdate();
	            System.out.println("liked");
	            ps.close();
	         System.out.println("like added");
	        } catch (SQLException e) {
	            //e.printStackTrace();
	            throw new RuntimeException(e);
	        }
	}
}