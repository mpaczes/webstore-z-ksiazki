package com.packt.webstore.controller;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.packt.webstore.domain.Product;
import com.packt.webstore.sevice.IProductService;

/*
Poprawne linki uruchamiajace aplikacje :

	(1) http://localhost:8080/webstore-mp/spring/products
	
	(2) http://localhost:8080/webstore-mp/spring/products/all
	
	(3) http://localhost:8080/webstore-mp/spring/products/laptop
	
	(4) http://localhost:8080/webstore-mp/spring/products/product?id=P1234
	
	(5) http://localhost:8080/webstore-mp/spring/products/add
	
	(6) http://localhost:8080/webstore-mp/spring/products/product.json?id=P1235
	
	(7) http://localhost:8080/webstore-mp/spring/products/product.xml?id=P1235
*/

@Controller
@RequestMapping("/products")
public class ProductController {
	
	@Autowired
	private IProductService productService;
	
	/**
	 * Domyslna metoda kontrolera. 
	 * <br />
	 * Taka metoda moze byc w danym kontrolerze tylko jedna.
	 */
	@RequestMapping
	public String list(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		
		return "products";
	}
	
	@RequestMapping("/all")
	public String allProducts(Model model) {
		model.addAttribute("products", productService.getAllProducts());
		
		return "products";
	}
	
	@RequestMapping("/{category}")
	public String getProductsByCategory(Model model, @PathVariable("category") String productCategory) {
		model.addAttribute("products", productService.getProductsByCategory(productCategory));
		
		return "products";
	}
	
	@RequestMapping("/product")
	public String getProductById(@RequestParam("id") String productId, Model model) {
		model.addAttribute("product", productService.getProductById(productId));
		
		return "product";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getAddNewProductForm(Model model) {
		Product newProduct = new Product();
		
		model.addAttribute("newProduct", newProduct);
		
		return "addProduct";
	}
	
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddNewProductForm(@ModelAttribute("newProduct") Product newProduct) {
		productService.addProduct(newProduct);
		
		return "redirect:/spring/products";
	}

}
