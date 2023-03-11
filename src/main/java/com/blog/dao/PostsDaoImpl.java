package com.blog.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.blog.model.UploadData;


@Component
public class PostsDaoImpl implements PostsDao{
	
	private JdbcTemplate jdbcTemp;

	public PostsDaoImpl(DataSource dataSource) {
		jdbcTemp = new JdbcTemplate(dataSource);
	}

	@SuppressWarnings("deprecation")
	@Override
	public List<UploadData> postsList(int userId) {
		List<UploadData> list = jdbcTemp.query("SELECT * FROM POSTS WHERE USERID = ?",new Object[] {userId}, new RowMapper<UploadData>() {

			@Override
			public UploadData mapRow(ResultSet rs, int rowNum) throws SQLException {
				UploadData post = new UploadData();
				post.setPostId(Integer.parseInt(rs.getString("post_id")));
				post.setType(rs.getString("type"));
				post.setTextPost(rs.getString("text_post"));
				post.setOtherContent(rs.getString("other_content"));
				post.setCaption(rs.getString("caption"));
				post.setLikes(Integer.parseInt(rs.getString("likes")));
				post.setComments(Integer.parseInt(rs.getString("Comments")));
				
				return post;
			}

		});
		return list;
	}

	@Override
	public List<UploadData> posts() {
		List<UploadData> list = jdbcTemp.query("SELECT * FROM POSTS ", new RowMapper<UploadData>() {
			@Override
			public UploadData mapRow(ResultSet rs, int rowNum) throws SQLException {
				UploadData post = new UploadData();
				post.setPostId(Integer.parseInt(rs.getString("post_id")));
				post.setType(rs.getString("type"));
				post.setTextPost(rs.getString("text_post"));
				post.setOtherContent(rs.getString("other_content"));
				post.setCaption(rs.getString("caption"));
				post.setLikes(Integer.parseInt(rs.getString("likes")));
				post.setComments(Integer.parseInt(rs.getString("Comments")));
		return post;
	}
		});
		return list;
	}

}