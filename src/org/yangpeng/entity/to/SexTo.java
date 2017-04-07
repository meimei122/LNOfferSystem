package org.yangpeng.entity.to;

public class SexTo {
	private	int sexId;
	private String  sexContxt;
	public int getSexId() {
		return sexId;
	}
	public void setSexId(int sexId) {
		this.sexId = sexId;
	}
	public String getSexContxt() {
		return sexContxt;
	}
	public void setSexContxt(String sexContxt) {
		this.sexContxt = sexContxt;
	}
	public SexTo(int sexId, String sexContxt) {
		super();
		this.sexId = sexId;
		this.sexContxt = sexContxt;
	}
	public SexTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
