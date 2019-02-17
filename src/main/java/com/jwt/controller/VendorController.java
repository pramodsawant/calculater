package com.jwt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ArrayList; 
import java.util.Arrays;
import com.jwt.model.Sortproduct;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.jwt.model.Sortvendor; 
import org.apache.tomcat.util.descriptor.web.LoginConfig;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jwt.model.Product;
import com.jwt.model.Vendor;
import com.jwt.service.ProductService;
import com.jwt.service.VendorService;
import java.util.Collections;

@Controller
public class VendorController extends HttpServlet {
	  
	private static final long serialVersionUID = 1L;
	private static final Logger logger = Logger.getLogger(VendorController.class);
	Vendor vendor;

	 public VendorController() {
	        System.out.println("VendorController()");
	       
	    }

	 @Autowired
	    private VendorService vendorService;
	 @Autowired
	 private ProductService productService;
	
//=================================================================================================================================
	 public ModelAndView listEmployeetest() throws IOException {
		 ModelAndView model = new ModelAndView();
		// List<Vendor> listVendor = new ArrayList<Vendor>(vendorService.getAllVendors());
	//	 List<List<Vendor>> listVendor = Arrays.asList(vendorService.getAllVendors());
		 ArrayList<Vendor> listVendor = new ArrayList<Vendor>();
		 listVendor = (ArrayList<Vendor>) vendorService.getAllVendors();
		 
	   //     List<Vendor> listVendor = vendorService.getAllVendors();
	        
	        
	        model.addObject("listVendor", listVendor);
	        model.setViewName("home");
	        return model;
	 
	 
	 }
	 
	//=================================================================================================================================
  
	 @RequestMapping(value = "/")
	    public ModelAndView index (ModelAndView model) throws IOException {
 
	        model.setViewName("index");
	        return model;
	    }
	 
	 @RequestMapping(value = "/login", method = RequestMethod.POST)
	 public ModelAndView login (ModelAndView model,HttpServletRequest request, HttpServletResponse response) throws IOException {
	        
  
//=================================================================================================================================
		 String un=request.getParameter("username");
		 
		   String pw=request.getParameter("password");
		   if(un.equals("admin") && pw.equals("admin"))
		   {
			   //=====================================
			   
			   
			   // "working "  List<Vendor> listVendor = vendorService.getAllVendors();
			   
			  // List<Vendor> listVendor = new ArrayList<Vendor>(vendorService.getAllVendors());
			   ArrayList<Vendor> listVendor = new ArrayList<Vendor>();
				 listVendor = (ArrayList<Vendor>) vendorService.getAllVendors();
		         Collections.sort(listVendor,new Sortvendor()); // sort order
		      //    Collections.sort(listVendor, Collections.reverseOrder(new SortByName()));  // reverse order
		      
			   
		        model.addObject("listVendor", listVendor);
			   //=====================================
			   model.setViewName("home");
			   
		   }else {
			   model.setViewName("index");
			
		}
		 
      return model;
	 }
	 
 public List<Vendor> venname()
 {
	 List<Vendor> listVendor = vendorService.getAllVendors();
 
	 
	 Vendor vendor = null;
     // itrator testing start 
     
     Iterator<Vendor> itr = listVendor.iterator();
     while (itr.hasNext()) {
			 vendor = (Vendor) itr.next();
		 System.out.println(vendor.getName());
			
			
		}
	 
	return (List<Vendor>) vendor ;
	 
	 
 }
 
			 
	 @RequestMapping(value = "/home")
	    public ModelAndView listEmployee(ModelAndView model) throws IOException {
	       // List<Vendor> listVendor = vendorService.getAllVendors();
	        
	        
	        ArrayList<Vendor> listVendor = new ArrayList<Vendor>();
			 listVendor = (ArrayList<Vendor>) vendorService.getAllVendors();
	         Collections.sort(listVendor,new Sortvendor()); // sort order
	        // itrator testing start 
	        
	       
	        
	        
	        // itrator testing start 
	        model.addObject("listVendor", listVendor);
	        model.setViewName("home");
	        return model;
	    }
	 
	    @RequestMapping(value = "/newVendor", method = RequestMethod.GET)
	    public ModelAndView newContact(ModelAndView model) {
	    	//List<Vendor> listVendor = vendorService.getAllVendors();
	       // model.addObject("listVendor", listVendor);
	        Vendor vendor = new Vendor();
	        model.addObject("vendor", vendor);
	        model.setViewName("VendorForm");
	        return model;
	    }
	 
	    @RequestMapping(value = "/saveVendor", method = RequestMethod.POST)
	    public ModelAndView saveVendor(@ModelAttribute Vendor vendor,ModelAndView model) {
	    	 
	        if (vendor.getId() == 0) { // if employee id is 0 then creating the
	            // employee other updating the employee
	            vendorService.addVendor(vendor);
	        } else {
	            vendorService.updateVendor(vendor);
	        }
	        
	        return new ModelAndView("redirect:/home");
	        
	        
	    }
	 
	    @RequestMapping(value = "/deleteVendor", method = RequestMethod.GET)
	    public ModelAndView deleteVendor(HttpServletRequest request, ModelAndView model) {
	        int vendorId = Integer.parseInt(request.getParameter("id"));
 
	        vendorService.deleteVendor(vendorId);
	         
	        return new ModelAndView("redirect:/home");
	    }
	 
	    @RequestMapping(value = "/editVendor", method = RequestMethod.GET)
	    public ModelAndView editContact(HttpServletRequest request) {
	        int vendorId = Integer.parseInt(request.getParameter("id"));
	        Vendor vendor = vendorService.getVendor(vendorId);
	        ModelAndView model = new ModelAndView("VendorForm");
	        model.addObject("vendor", vendor);
	 
	        return model;
	    }

	    @RequestMapping(value ="/allproduct")
	    public ModelAndView allproducts ()
	    {
	    	ModelAndView model = new ModelAndView();
	    	List<Product> getallproducts =  productService.getAllProducts();
	    	Collections.sort(getallproducts, new Sortproduct());
	    	model.addObject("getallproducts", getallproducts);
	    	model.setViewName("allproduct");
	    	
			return model;
	    	
	    	
	    }
	    
	    @RequestMapping(value = "/newProduct", method = RequestMethod.GET)
	    public ModelAndView newProdunct(ModelAndView model) {
	    	 List<Vendor> listVendor = vendorService.getAllVendors();
	    	 List<String> vname = new ArrayList<String>();
	    	 ///code test start 
	    	  
	    	  //  List<Vendor> listVendor = vendorService.getAllVendors();
		        Iterator<Vendor> itr = listVendor.iterator();
		        	        while (itr.hasNext()) {
		        				Vendor vendor = (Vendor) itr.next();
		        				// vname = new ArrayList<String>();
		        				vname.add(vendor.getName());
		        				
		        				//System.out.println(vendor.getName());
		        				//System.out.println(vendor.getAddress());
		        				//System.out.println(vendor.getEmail());
		        			}
	    	 
	    	 /// code test end
	    	 //Vendor vendor = new Vendor();
	    	  System.out.println(listVendor);
		        	        
		        	        String [] Batch = {"Morning" ,"Afternoon","Evening"};
		        	        model.addObject("Batch", Batch);
		      model.addObject("vname", vname);
	         Product product = new Product();
	        model.addObject("product", product);
	        model.setViewName("ProductForm");
	        
	        // test code start
	        
	    
	        
	        //test code end
	        return model;
	    }
	    @RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	    public ModelAndView saveProduct(@ModelAttribute Product product,ModelAndView model) {
	    	 
	        if (product.getId() == 0) { // if employee id is 0 then creating the
	            // employee other updating the employee
	        	productService.addProduct(product);
	        } else {
	        	productService.updateProduct(product);
	        }
	        
	        return new ModelAndView("redirect:/allproduct");
    
	    }
	    
	    
	    //===============cal=======================================
	    
	    
	    
	    
	    //======================================================
	    @RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	    public ModelAndView editProduct(HttpServletRequest request) {
	        int productId = Integer.parseInt(request.getParameter("id"));
	        Product product = productService.getProduct(productId);
	        ModelAndView model = new ModelAndView("ProductForm");
	        
	        // edit venodr list start
	        
	        List<Vendor> listVendor = vendorService.getAllVendors();
	    	 List<String> vname = new ArrayList<String>();
	    	 
	    	  
	     
		        Iterator<Vendor> itr = listVendor.iterator();
		        	        while (itr.hasNext()) {
		        				Vendor vendor = (Vendor) itr.next();
		        				 
		        				vname.add(vendor.getName());
		        				 
		        			}
		        	        model.addObject("vname", vname);
	        // edit venodr list end
	        model.addObject("product", product);
	        
	        String [] Batch = {"Morning" ,"Afternoon","Evening"};
	        model.addObject("Batch", Batch);
	        return model;
	    }
	    
	    @RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	    public ModelAndView deleteProduct(HttpServletRequest request, ModelAndView model) {
	        int productId = Integer.parseInt(request.getParameter("id"));
 
	        productService.deleteProduct(productId);
	         
	        return new ModelAndView("redirect:/allproduct");
	    }
	    
	    
}
