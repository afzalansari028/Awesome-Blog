package com.blog.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.blog.model.UploadData;

@Component
public interface PostsDao {
	public List<UploadData> postsList(int userId);
	public List<UploadData> posts();
}
