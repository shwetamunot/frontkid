package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import niit.com.Dao.CartDao;
import niit.com.Dao.CategoryDao;
import niit.com.Dao.ProductDao;
import niit.com.model.Cart;
import niit.com.model.Product;

@Controller
public class CartController {

	@Autowired
	CategoryDao categoryDao;
	@Autowired 
	ProductDao productDao;
	@Autowired
	CartDao cartDao;

	@RequestMapping(value="addcart",method=RequestMethod.GET)
	public String list(Model m)
	{
		System.out.println("pqrstuvwxyz");
		m.addAttribute("cart",new Cart());
	 List<Cart> listCart=cartDao.retrieveCart();
		m.addAttribute("cartList",listCart);
		return "AddCart";
	}
	@RequestMapping(value="addtocart/{cId}")
		public String addcart(@PathVariable("cId")int proId,Model m)
		{
		Product product=productDao.getProduct(proId);
		m.addAttribute("product",product);
		
		
		List<Cart> listCart=cartDao.retrieveCart();
		
		if(cartDao.checkCart(proId))
		{
		m.addAttribute("cart",cartDao.getCartByProd(proId));
		System.out.println("true");
		}
		else
		{
		
		m.addAttribute("cart",new Cart());
		System.out.println("false");
		
		
		}
		
		return "AddCart";
		}

	@RequestMapping(value="confirm")
	public String confirmCart(@ModelAttribute("cart")Cart cart,Model m)
	{
		System.out.println("Cart ID"+cart.getCartId());
	cartDao.addCart(cart);
	List<Cart> listCart=cartDao.retrieveCart();
	m.addAttribute("cartList",listCart);
	
	return "Confirm";
	
	}
	@RequestMapping(value="buynow/{cartId}")
	public String buyCart(@PathVariable("cartId")int cartId,Model m)
	{
		Cart cart=cartDao.getCart(cartId);
		System.out.println("the cart info"+cart.getPrice());
		m.addAttribute("cart", cart);
		return "Buy";
	}
	
	@RequestMapping(value="/orderconfirmed")
public String orderconfirm()
{
		return "order";
}
}
	
