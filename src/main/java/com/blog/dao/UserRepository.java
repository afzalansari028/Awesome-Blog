package com.blog.dao;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.blog.model.User;
@Repository
public interface UserRepository extends CrudRepository<User, Integer> {

	public User findById(int id);
	
	@Query("select u from User u where u.email = :email and u.password = :password")
	public User findByEmailAndPassword(@Param("email") String email,@Param("password") String password);
	
	@Query("select u from User u where u.email = :email")
	public User findByEmail(@Param("email") String email);
	
	
}
