package com.blog.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;
@Component
@Entity
@Table(name="activeuser")
public class ActiveUsers {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String username;
	private String email;
	private String phone;
	private int noOfPosts;
	private int following;
	public ActiveUsers(int id, String username, String email, String phone, int noOfPosts, int following) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.phone = phone;
		this.noOfPosts = noOfPosts;
		this.following = following;
	}
	public ActiveUsers() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getNoOfPosts() {
		return noOfPosts;
	}
	public void setNoOfPosts(int noOfPosts) {
		this.noOfPosts = noOfPosts;
	}
	public int getFollowing() {
		return following;
	}
	public void setFollowing(int following) {
		this.following = following;
	}
}