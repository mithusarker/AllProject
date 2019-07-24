package com.spring.springCrudProject.Dao;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class Post {
	
	private int id;
	
	
	private String image;
	
	@NotBlank
	@Size(min=10, max=45)
	private String title;
	
	private User user;
	
	@NotBlank
	private String date;
	
	@NotBlank
	@Size(min=15, max=150)
	private String description;
	
	public Post() {
		this.user = new User();
	}

	public Post(String image, String title, User user, String date, String description) {
		this.image = image;
		this.title = title;
		this.user = user;
		this.date = date;
		this.description = description;
	}

	public Post(int id, String image, String title, User user, String date, String description) {
		this.id = id;
		this.image = image;
		this.title = title;
		this.user = user;
		this.date = date;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getUsername() {
		return user.getUsername();
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((description == null) ? 0 : description.hashCode());
		result = prime * result + ((image == null) ? 0 : image.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Post other = (Post) obj;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (description == null) {
			if (other.description != null)
				return false;
		} else if (!description.equals(other.description))
			return false;
		if (image == null) {
			if (other.image != null)
				return false;
		} else if (!image.equals(other.image))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", image=" + image + ", title=" + title + ", user=" + user + ", date=" + date
				+ ", description=" + description + "]";
	}
	
	
	

}
