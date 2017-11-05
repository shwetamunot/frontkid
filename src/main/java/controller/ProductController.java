package controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import niit.com.Dao.CategoryDao;
import niit.com.Dao.ProductDao;
import niit.com.Dao.SupplierDao;
import niit.com.model.Category;
import niit.com.model.Product;
import niit.com.model.Supplier;
@Controller
public class ProductController {
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao  categoryDao;
	@Autowired
	SupplierDao supplierDao;
@RequestMapping(value="product",method=RequestMethod.GET)
public String showProduct(Model m)
{
	Product product=new Product();
			m.addAttribute(product);
			
			m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList",this.getSuppliers());
		
		List<Product> listProduct=productDao.retrieveProduct();
		    m.addAttribute("productList",listProduct);
		    
		    
		return "Product";
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
public LinkedHashMap<Integer,String> getSuppliers()
{
	List<Supplier> listSuppliers=supplierDao.retrieveSupplier();
	LinkedHashMap<Integer,String> suppliersList=new LinkedHashMap<Integer,String>();
	for(Supplier supplier:listSuppliers)
	{
		suppliersList.put(supplier.getsId(),supplier.getsName());
	}
	return suppliersList;
}


@RequestMapping(value="AddProduct",method=RequestMethod.POST)
public String addProduct(@ModelAttribute("product")Product product,@RequestParam("pimge")MultipartFile fileDetail,Model m)
{
	productDao.addProduct(product);
	
	String path="C:\\Users\\Admin\\workspace\\KidFrontend\\src\\main\\webapp\\resources\\";
	String totalFileWithPath=path+String.valueOf(product.getProId())+".jpg";
	File productImage=new File(totalFileWithPath);
	if(!fileDetail.isEmpty())
	{
		try
		{
			byte fileBuffer[]=fileDetail.getBytes();
			FileOutputStream fos=new FileOutputStream(productImage);
			BufferedOutputStream bs=new BufferedOutputStream(fos);
			bs.write(fileBuffer);
			bs.close();
			}
		catch(Exception e)
		{
			m.addAttribute("error",e.getMessage());
		}
	}
	else
	{
		m.addAttribute("error","problem in file uploading");
	}
	
	Product product1=new Product();
			m.addAttribute(product1);
	
	List<Product> listProduct=productDao.retrieveProduct();
    m.addAttribute("productList",listProduct);
    return "Product";
}
@RequestMapping(value="productDesc/{proId}")
public String showProductDesc(@PathVariable("proId")int proId,Model m)
{
	Product product=productDao.getProduct(proId);
m.addAttribute("product",product);


return "Description";
}
}
