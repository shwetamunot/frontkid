package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import niit.com.Dao.SupplierDao;
import niit.com.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	SupplierDao supplierDao;
@RequestMapping(value="supplier",method=RequestMethod.GET)
public String showSupplier(Model m)
{
	Supplier supplier=new Supplier();
    m.addAttribute(supplier);
	List<Supplier> listSupplier=supplierDao.retrieveSupplier();
	m.addAttribute("supplierList",listSupplier);
	
	return "Supplier";
	}
@RequestMapping(value="AddSupplier",method=RequestMethod.POST)
public String addSupplier(@ModelAttribute("supplier")Supplier supplier,Model m)
{
    
	supplierDao.addSupplier(supplier);
    
    List<Supplier> listSupplier=supplierDao.retrieveSupplier();
    m.addAttribute("supplierList",listSupplier);
   
	return "Supplier";
}	

@RequestMapping(value="DeleteSupplier/{sId}",method=RequestMethod.GET)
public String deleteSupplier(@PathVariable("sId")int sId,@ModelAttribute("supplier")Supplier supplier,Model m)

{
    Supplier supplier1=supplierDao.getSupplier(sId);
    supplierDao.deleteSupplier(supplier1);
    List<Supplier> listSupplier=supplierDao.retrieveSupplier();
    m.addAttribute("supplierList",listSupplier);

return "Supplier";
}

@RequestMapping(value="UpdateSupplier/{sId}",method=RequestMethod.GET)
public String UpdateSupplier(@PathVariable("sId")int sId,@ModelAttribute("Supplier")Supplier supplier,Model m)
{
Supplier supplier2=supplierDao.getSupplier(sId);
m.addAttribute(supplier2);
List<Supplier> listSupplier=supplierDao.retrieveSupplier();
m.addAttribute("supplierList",listSupplier);

	return "Supplier";

}

}

