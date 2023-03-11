package com.blog.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.lang.Nullable;

@Entity
@Table(name = "posts")
public class UploadData {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int postId;
	private int userId;
	private String type;
	@Nullable
	private String textPost;
	private String otherContent;
	private String caption;
	private int likes;
	private int comments;

	@Override
	public String toString() {
		return "Posts [postId=" + postId + ", userId=" + userId + ", type=" + type + ", textPost=" + textPost
				+ ", otherContent=" + otherContent + ", caption=" + caption + ", likes=" + likes + ", comments="
				+ comments + "]";
	}

	public UploadData(int postId, int userId, String type, String textPost, String otherContent, String caption,
			int likes, int comments) {
		super();
		this.postId = postId;
		this.userId = userId;
		this.type = type;
		this.textPost = textPost;
		this.otherContent = otherContent;
		this.caption = caption;
		this.likes = likes;
		this.comments = comments;
	}

	public UploadData() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTextPost() {
		return textPost;
	}

	public void setTextPost(String textPost) {
		this.textPost = textPost;
	}

	public String getOtherContent() {
		return otherContent;
	}

	public void setOtherContent(String otherContent) {
		this.otherContent = otherContent;
	}

	public String getCaption() {
		return caption;
	}

	public void setCaption(String caption) {
		this.caption = caption;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getComments() {
		return comments;
	}

	public void setComments(int comments) {
		this.comments = comments;
	}

}
