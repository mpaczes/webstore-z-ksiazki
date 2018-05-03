package com.packt.webstore.sevice;

import java.util.List;

import com.packt.webstore.domain.Product;

public interface IProductService {

	List<Product> getAllProducts();
	
	Product getProductById(String productId);
	
	List<Product> getProductsByCategory(String category);
	
	void addProduct(Product product);
	
}
