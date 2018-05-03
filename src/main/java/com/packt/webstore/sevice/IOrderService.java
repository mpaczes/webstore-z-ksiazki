package com.packt.webstore.sevice;

public interface IOrderService {

	void processOrder(String productId, int count);
	
}
