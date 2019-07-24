package com.spring.springCrudProject.Srevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.springCrudProject.Dao.Post;
import com.spring.springCrudProject.Dao.PostDao;


import java.util.List;

@Service("postService")
public class PostService {

	@Autowired
	private PostDao postDao;

	public void create(Post post) {
		postDao.create(post);
	}

	public List<Post> getAllPost() {
		return postDao.getPost();
	}

	public void detetePost(int id) {
		postDao.detetePost(id);

	}

	public List<Post> getCurrent(String username) {
		return postDao.getCurrentPost(username);
	}

	public boolean hasPost(String name) {
		if (name == null)
			return false;

		List<Post> post = postDao.getCurrentPost(name);

		if (post.size() == 0)
			return false;

		return true;
	}

	

}
