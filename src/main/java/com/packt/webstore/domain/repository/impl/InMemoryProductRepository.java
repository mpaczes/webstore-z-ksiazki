package com.packt.webstore.domain.repository.impl;

import java.util.List;
import java.util.ArrayList;
import java.math.BigDecimal;

import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Product;
import com.packt.webstore.domain.repository.IProductRepository;

@Repository
public class InMemoryProductRepository implements IProductRepository {

	private List<Product> listOfProducts = new ArrayList<>();
	
	public InMemoryProductRepository() {
		Product iphone = new Product("P1234", "iPhone 5s", new BigDecimal(500));
		
		iphone.setDescription("Apple iPhone 5s, smartfon z 4-calowym wyswietlaczem o rozdzielczosci 640x1136 oraz 8-megapikselowym aparatem");
		iphone.setCategory("Smart Phone");
		iphone.setManufacturer("Apple");
		iphone.setUnitsInStock(1000);
		
		this.listOfProducts.add(iphone);
		
		Product laptopDell = new Product("P1235", "Dell Inspiron", new BigDecimal(700));
		
		laptopDell.setDescription("Dell Inspiron, 14-calowy laptop (czarny) z procesorem Intel Core 3-ciej generacji");
		laptopDell.setCategory("Laptop");
		laptopDell.setManufacturer("Dell");
		laptopDell.setUnitsInStock(1000);
		
		this.listOfProducts.add(laptopDell);
		
		Product tabletNexus = new Product("P1236", "Nexus 7", new BigDecimal(300));
		
		tabletNexus.setDescription("Google Nexus 7 jest najlzejszym 7-calowym tabletem z 4-rdzeniowym procesorem Qualcomm Snapdragon S4 Pro");
		tabletNexus.setCategory("Tablet");
		tabletNexus.setManufacturer("Google");
		tabletNexus.setUnitsInStock(1000);
		
		this.listOfProducts.add(tabletNexus);
	}
	
	@Override
	public List<Product> getAllProducts() {
		return this.listOfProducts;
	}

	@Override
	public Product getProductById(String productId) {
		Product productById = null;
		for (Product product : this.listOfProducts) {
			if (product != null && product.getProductId() != null 
					&& product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		
		if (productById == null) {
			throw new IllegalArgumentException("Brak producktu o wskazanym id : " + productId);
		}
		
		return productById;
	}

	@Override
	public List<Product> getProductsByCategory(String category) {
		List<Product> producstByCategory = new ArrayList<>();
		
		for (Product product : this.listOfProducts) {
			if (category.equalsIgnoreCase(product.getCategory())) {
				producstByCategory.add(product);
			}
		}
		
		return producstByCategory;
	}

	@Override
	public void addProduct(Product product) {
		this.listOfProducts.add(product);
	}

}
