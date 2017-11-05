package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import niit.com.Dao.UserDao;
import niit.com.model.User;

@Controller
public class UserController {
	@Autowired
	UserDao userDao;

	@RequestMapping(value="user",method=RequestMethod.GET)
		public String showUser(Model m)
		{	
	   User user=new User();
	   m.addAttribute(user);
		List<User> listUser=userDao.retrieveUser();
	    m.addAttribute("userList",listUser);
	    
	   
		return "User";
		}

	@RequestMapping(value="AddUser",method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user")User user,Model m)
	{
	    
	    userDao.addUser(user);
	    
	    List<User> listUser=userDao.retrieveUser();
	    m.addAttribute("userList",listUser);
	   
		return "User";
}	
	@RequestMapping(value="DeleteUser/{useId}",method=RequestMethod.GET)
		public String deleteUser(@PathVariable("useId")int useId,@ModelAttribute("user")User user,Model m)
		{
	        User user1=userDao.getUser(useId);
	        userDao.deleteUser(user1);
	    List<User> listUser=userDao.retrieveUser();
	    m.addAttribute("userList",listUser);
	   
		return "User";
}	
}
