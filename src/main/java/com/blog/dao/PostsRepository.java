package com.blog.dao;

import org.springframework.data.repository.CrudRepository;

import com.blog.model.UploadData;

public interface PostsRepository extends CrudRepository<UploadData,Integer>{

}
