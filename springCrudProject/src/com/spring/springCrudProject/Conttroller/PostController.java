package com.spring.springCrudProject.Conttroller;

import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.springCrudProject.Dao.Post;
import com.spring.springCrudProject.Dao.PostDao;
import com.spring.springCrudProject.Dao.User;
import com.spring.springCrudProject.Srevice.PostService;


@Controller
public class PostController {

	@Autowired
	private PostService postService;
	
	@Autowired
	private PostDao postDao;

	@RequestMapping(value = "/postform")
	public String showPostForm(Model m) {
		m.addAttribute("post", new Post());
		return "postform";
	}

	@RequestMapping(value = "/docreatePost", method = RequestMethod.POST)
	public String doCreate(@ModelAttribute("post") @Valid Post post, BindingResult result, Principal principal) {

		if (result.hasErrors()) {
			return "postform";
		}

		String username = principal.getName();
		post.getUser().setUsername(username);

		postService.create(post);

		return "postcreatesuccessfully";

	}

	@RequestMapping(value="/viewallpost")
	public String showAllPost(Model m) {
		List<Post> post = postService.getAllPost();
		m.addAttribute("post", post);
		
		return "viewallpost";
	}
	
	
	@RequestMapping(value = "/editallpost/{id}")
	public String editAllPost(@PathVariable int id, Model m) {
		Post post = postDao.getUserByPostId(id);
		m.addAttribute("post", post);
		return "allposteditform";
	}

	/* It updates model object. */
	@RequestMapping(value = "/allposteditsave", method = RequestMethod.POST)
	public String allPostEditSave(@ModelAttribute("post") Post post) {
		
		postDao.updateAllPost(post);
		
		return "redirect:/viewallpost";
	}
	
	
	@RequestMapping(value = "/deletepost/{id}", method = RequestMethod.GET)
	public String deletePost(@PathVariable int id) {
		postService.detetePost(id);
		return "redirect:/viewallpost";
	}
	
	
	
	///////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	//show current user data
	@RequestMapping(value="/viewcurrentpost")
	public String showCurrentPost(Model m, Principal principal) {
	    boolean hasPost = false;
	    if(principal != null) {
	        hasPost = postService.hasPost(principal.getName());
	    }
	   List<Post> posts = postDao.getCurrentPost(principal.getName());
	           m.addAttribute("post", posts);
	    m.addAttribute("hasPost", hasPost);

	    return "viewcurrentpost";
	}
	
	
	@RequestMapping(value = "/editcurrentpost/{id}")
	public String editCurrentPost(@PathVariable int id, Model m) {
		Post post = postDao.getUserByPostId(id);
		m.addAttribute("post", post);
		return "currentposteditform";
	}

	/* It updates model object. */
	@RequestMapping(value = "/currentposteditsave", method = RequestMethod.POST)
	public String currentPostEditSave(@ModelAttribute("post") Post post) {
		
		postDao.updateAllPost(post);
		
		return "redirect:/viewcurrentpost";
	}
	
	
	
	//delete current user data
	@RequestMapping(value = "/deletePostCurrentUser/{id}", method = RequestMethod.GET)
	public String deletePostCurrentUser(@PathVariable int id) {
		postService.detetePost(id);
		return "redirect:/viewcurrentpost";
	}
	
	
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	@RequestMapping(value="/blog")
	public String showBlog(Model m) {
		List<Post> post = postService.getAllPost();
		m.addAttribute("post", post);
		return "blog";
	}
	
	
	
	
	
	
	

}
