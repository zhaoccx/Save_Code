package com.zcc.order;

public class Order {
	private String productName = null;
	private int count = 0;
	private int unitPrice = 0;

	@Override
	public String toString() {
		return "Order [productName=" + productName + ", count=" + count + ", unitPrice=" + unitPrice + "]";
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public static void main(String[] args) {

	}

	public int getTotilPrice() {
		return this.unitPrice * this.count;
	}
}
