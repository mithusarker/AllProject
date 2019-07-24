package com.spring.springCrudProject.Conttroller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.springCrudProject.Dao.User;
import com.spring.springCrudProject.Dao.UserDao;

@Controller
public class UserController {
	
	private UserDao userDao;
	
	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@RequestMapping("/newaccount")
	public String showform(Model m) {
		m.addAttribute("user", new User());
		return "newaccount";
	}

	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public String saveUser(@ModelAttribute("user") @Valid User user, BindingResult result) {

		if (result.hasErrors()) {
			return "newaccount";
		}
		
		user.setAuthority("ROLE_USER");
		user.setEnabled(true);
		
		if(userDao.exists(user.getUsername())) {
			result.rejectValue("username", "DuplicateKey.user.username");
			return "newaccount";
		}
		
		try {
			userDao.saveUser(user);
		}catch (DuplicateKeyException e) {
			result.rejectValue("username", "DuplicateKey.user.username");
		}
		
		return "usercreatesuccess";
		
	}
	
	@RequestMapping("/viewuser")
	public String viewuser(Model m) {
		List<User> list = userDao.getUser();
		m.addAttribute("list", list);
		return "viewuser";
	}
	
	/* It deletes record for the given id in URL and redirects to /viewemp */
	@RequestMapping(value = "/deleteuser/{username}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable String username) {
		userDao.deteteUser(username);
		return "redirect:/viewuser";
	}
	
	
	@RequestMapping(value = "/edituser/{username}")
	public String editUser(@PathVariable String username, Model m) {
		User user = userDao.getUserByUsername(username);
		m.addAttribute("user", user);
		return "usereditform";
	}

	/* It updates model object. */
	@RequestMapping(value = "/usereditsave", method = RequestMethod.POST)
	public String userEditSave(@ModelAttribute("user") User user) {
		
		
		userDao.updateUser(user);
		
		return "redirect:/viewuser";
	}
	
	
	
	
	

}
