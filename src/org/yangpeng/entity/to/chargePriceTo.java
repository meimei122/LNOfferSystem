package org.yangpeng.entity.to;

public class chargePriceTo {
	private int priceId;
	private String priceNumber;
	public int getPriceId() {
		return priceId;
	}
	public void setPriceId(int priceId) {
		this.priceId = priceId;
	}
	public String getPriceNumber() {
		return priceNumber;
	}
	public void setPriceNumber(String priceNumber) {
		this.priceNumber = priceNumber;
	}
	public chargePriceTo(int priceId, String priceNumber) {
		super();
		this.priceId = priceId;
		this.priceNumber = priceNumber;
	}
	public chargePriceTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
