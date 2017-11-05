package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import niit.com.Dao.CategoryDao;

import niit.com.model.Category;
@Controller
public class CategoryController {
/*	@Autowired
	CategoryDao categoryDao;

	@RequestMapping(value="category",method=RequestMethod.GET)
public String showCategory(Model m)
{
	Category category=new Category();
	m.addAttribute(category);
	List<Category> listCategory=categoryDao.retrieveCategory();
    m.addAttribute("catgeoryList",listCategory);
	
    return "Category";
}
@RequestMapping(value="AddCategory",method=RequestMethod.POST)
	public String  addCategory(@ModelAttribute("category")Category category,Model m)
	{
	categoryDao.addCategory(category);
	
	List<Category> listCategory=categoryDao.retrieveCategory();
    m.addAttribute("categoryList",listCategory);
	
    return "Category";
}*/
@Autowired
CategoryDao categoryDao;

@RequestMapping(value="category",method=RequestMethod.GET)
	public String showCategory(Model m)
	{	
   Category category=new Category();
   m.addAttribute(category);
	List<Category> listCategory=categoryDao.retrieveCategory();
    m.addAttribute("categoryList",listCategory);
    
   
	return "Category";
	}

@RequestMapping(value="AddCategory",method=RequestMethod.POST)
public String addCategory(@ModelAttribute("category")Category category,Model m)
{
    
    categoryDao.addCategory(category);
    
    List<Category> listCategory=categoryDao.retrieveCategory();
    m.addAttribute("categoryList",listCategory);
   
	return "Category";
}	

@RequestMapping(value="DeleteCategory/{cId}",method=RequestMethod.GET)
public String deleteCategory(@PathVariable("cId")int cId,@ModelAttribute("category")Category category,Model m)

{
    Category category1=categoryDao.getCategory(cId);
    categoryDao.deleteCategory(category1);
List<Category> listCategory=categoryDao.retrieveCategory();
m.addAttribute("categoryList",listCategory);

return "Category";
}	
@RequestMapping(value="UpdateCategory/{cId}",method=RequestMethod.GET)
public String UpdateCategory(@PathVariable("cId")int cId,@ModelAttribute("category")Category category,Model m)
{
Category category2=categoryDao.getCategory(cId);
m.addAttribute(category2);
List<Category> listCategory=categoryDao.retrieveCategory();
m.addAttribute("categoryList",listCategory);

	return "Category";

}
}