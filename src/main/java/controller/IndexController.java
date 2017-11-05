package controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.security.Principal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import niit.com.Dao.CategoryDao;
import niit.com.Dao.ProductDao;
import niit.com.Dao.UserDao;
import niit.com.model.Category;
import niit.com.model.Product;
import niit.com.model.User;

@Controller
public class IndexController
{
	@Autowired
	UserDao userDao;
@Autowired
CategoryDao categoryDao;
@Autowired
ProductDao productDao;
@RequestMapping("/")	
	public String index()
	{
	System.out.println("abcsde");
	  	return "index";
	}
@RequestMapping(value="login")
public String log(@RequestParam(value="logout",required=false)String logout,@ModelAttribute("log")User user,Model m)
{
System.out.println("user"+SecurityContextHolder.getContext().getAuthentication().getName());
	if(logout!=null){
		m.addAttribute("msg","you have Logout successfully.");
}
	m.addAttribute("log",new User());
	return "Login";
}

@RequestMapping(value="home")
public String hme(@ModelAttribute("log")User user,Model m)
{
	m.addAttribute("category", new Category());
	m.addAttribute("categoryList",categoryDao.retrieveCategory());
	Authentication principal=SecurityContextHolder.getContext().getAuthentication();
	if(principal.getPrincipal().toString().contains("ROLE_USER"))
	{
		
		return "NavUser";
	}
	else if(principal.getPrincipal().toString().contains("ROLE_ADMIN"))
	{

		return "homenav";

	}
	System.out.println("user"+SecurityContextHolder.getContext().getAuthentication().getCredentials());
	return "login";
	}

public LinkedHashMap<Integer,String> getCategories()
{
	List<Category> listCategories=categoryDao.retrieveCategory();
	LinkedHashMap<Integer,String> categoriesList=new LinkedHashMap<Integer,String>();
			for(Category category:listCategories)
			{
				categoriesList.put(category.getcId(),category.getCname());
			}
	return categoriesList;
}

@RequestMapping(value="productbycategory/{cId}")
public String viewCategory(@PathVariable("cId")int cId,Model m)
{
	
	List<Product> product=productDao.getProductBycId(cId);
	List<Category> listCategory=categoryDao.retrieveCategory();
m.addAttribute("categoryList",listCategory);
	m.addAttribute("productList", product);
	return "views";
}

/*
@RequestMapping(value="product")
	public String pro(Model m)
	{
	m.addAttribute("products",new Product());
		return "Product";
	}*/	
}
/*if(user.getPassword()=="123"&& user.getUsername()=="abcd")	
 */
/*
{
	return "Home";
}
else
{
	return"Login";
}*/
/*if(uname=="abcd" && password=="123")
{
	return "Home";
}
else
{
return "Login";	
}
*/

/*
@RequestMapping("/register")
	public String reg()
	{
	return "Register";	
	}
*/

