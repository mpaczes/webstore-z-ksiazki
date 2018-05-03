package com.packt.webstore.sevice.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.packt.webstore.domain.Product;
import com.packt.webstore.domain.repository.IProductRepository;
import com.packt.webstore.sevice.IOrderService;

@Service
public class OrderServiceImpl implements IOrderService {

	@Autowired
	private IProductRepository productRepository;
	
	@Override
	public void processOrder(String productId, int count) {
		Product productById = productRepository.getProductById(productId);
		
		if (productById.getUnitsInStock() < count) {
			throw new IllegalArgumentException("Zbyt malo towaru. Obecna liczba sztuk w magazynie : " + productById.getUnitsInStock());
		}
		
		productById.setUnitsInStock(productById.getUnitsInStock() - count);
	}

}
