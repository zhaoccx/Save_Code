package com.zcc.order;

public class OrderCount extends Order {

	public double getTotilPrice(double cou) {
		return super.getTotilPrice() * cou;
	}

}
