package com.niit.controller;

import java.util.List;
 
import javax.servlet.http.HttpSession;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;
import com.niit.model.Cart;
import com.niit.model.Product;
import com.niit.model.Users;

 
@Controller
public class CartController 
{
    @Autowired
    CartDao cartdao;
     
    @Autowired
    ProductDao productdao;
     
    @RequestMapping("/cart")
    public String showCartPage(Model m,HttpSession session)
    {
        String username=(String)session.getAttribute("username");
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
        return "cart";
    }
     
    @RequestMapping("/addToCart/{id}")
    public String addToCart(@PathVariable("id")int id,int qty,HttpSession session,Model m)
    {
    	System.out.println("entered the controller");
        String username=(String)session.getAttribute("username");
        Cart mycart=new Cart();
         
        Product product=productdao.getProductById(id);
        double price=product.getPrice();
         
        mycart.setId(id);
        mycart.setQuantity(1);
        mycart.setStatus("NP");
        mycart.setUsername(username);
       
        mycart.setSubtotal(1*price);
         
        cartdao.addtoCart(mycart);
         
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
         
        return "cart";
    }
     
    @RequestMapping(value="deleteCartItem/{cid}")
    public String deleteCartItem(@PathVariable("cid") int cid,Model m,HttpSession session)
    {
        String username=(String)session.getAttribute("username");
         
        cartdao.deleteCartItem(cid);
         
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
        return "cart";
    }
     
    @RequestMapping(value="updateCartItem/{cid}")
    public String updateCartItem(@PathVariable("cid")int cid,@RequestParam("qty")int qty,Model m,HttpSession session)
    {
        String username=(String)session.getAttribute("username");
         
        Cart cartitem=cartdao.getCartItem(cid);
         
        Product product=productdao.getProductById(cartitem.getId());
        double price=product.getPrice();
         
        cartitem.setQuantity(qty);
        cartitem.setSubtotal(qty*price);
         
        cartdao.updateCart(cartitem);
         
        List<Cart> cartitems=cartdao.getCartItems(username);
        m.addAttribute("cartitems",cartitems);
         
        return "cart";
         
    }
    
   
     
}
