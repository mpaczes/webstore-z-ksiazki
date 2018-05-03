package com.packt.webstore.sevice.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.webstore.domain.Product;
import com.packt.webstore.domain.repository.IProductRepository;
import com.packt.webstore.sevice.IProductService;

@Service
public class ProductServiceImpl implements IProductService {
	
	@Autowired
	private IProductRepository productRepository;

	@Override
	public List<Product> getAllProducts() {
		return productRepository.getAllProducts();
	}

	@Override
	public Product getProductById(String productId) {
		return productRepository.getProductById(productId);
	}

	@Override
	public List<Product> getProductsByCategory(String category) {
		return productRepository.getProductsByCategory(category);
	}

	@Override
	public void addProduct(Product product) {
		productRepository.addProduct(product);
	}

}
