package org.yangpeng.entity;

/**
 * 高中
 * @author Think
 *
 */
public class ArtsStu {
	private String ar_name;
	private String ar_adress;
	private String ar_sex;
	private String ar_teaching;
	private String ar_money;
	private String ar_subject;
	private String ar_demand;
	private String ar_date;
	private String ar_identity;
	private String ar_phone;
	private String status;
	public String getAr_name() {
		return ar_name;
	}
	public void setAr_name(String ar_name) {
		this.ar_name = ar_name;
	}
	public String getAr_adress() {
		return ar_adress;
	}
	public void setAr_adress(String ar_adress) {
		this.ar_adress = ar_adress;
	}
	public String getAr_sex() {
		return ar_sex;
	}
	public void setAr_sex(String ar_sex) {
		this.ar_sex = ar_sex;
	}
	public String getAr_teaching() {
		return ar_teaching;
	}
	public void setAr_teaching(String ar_teaching) {
		this.ar_teaching = ar_teaching;
	}
	public String getAr_money() {
		return ar_money;
	}
	public void setAr_money(String ar_money) {
		this.ar_money = ar_money;
	}
	public String getAr_subject() {
		return ar_subject;
	}
	public void setAr_subject(String ar_subject) {
		this.ar_subject = ar_subject;
	}
	public String getAr_demand() {
		return ar_demand;
	}
	public void setAr_demand(String ar_demand) {
		this.ar_demand = ar_demand;
	}
	public String getAr_date() {
		return ar_date;
	}
	public void setAr_date(String ar_date) {
		this.ar_date = ar_date;
	}
	public String getAr_identity() {
		return ar_identity;
	}
	public void setAr_identity(String ar_identity) {
		this.ar_identity = ar_identity;
	}
	public String getAr_phone() {
		return ar_phone;
	}
	public void setAr_phone(String ar_phone) {
		this.ar_phone = ar_phone;
	}
	public ArtsStu() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public ArtsStu(String ar_name, String ar_adress, String ar_sex,
			String ar_teaching, String ar_money, String ar_subject,
			String ar_demand, String ar_date, String ar_identity,
			String ar_phone, String status) {
		super();
		this.ar_name = ar_name;
		this.ar_adress = ar_adress;
		this.ar_sex = ar_sex;
		this.ar_teaching = ar_teaching;
		this.ar_money = ar_money;
		this.ar_subject = ar_subject;
		this.ar_demand = ar_demand;
		this.ar_date = ar_date;
		this.ar_identity = ar_identity;
		this.ar_phone = ar_phone;
		this.status = status;
	}
	@Override
	public String toString() {
		return "ArtsStu [ar_name=" + ar_name + ", ar_adress=" + ar_adress
				+ ", ar_sex=" + ar_sex + ", ar_teaching=" + ar_teaching
				+ ", ar_money=" + ar_money + ", ar_subject=" + ar_subject
				+ ", ar_demand=" + ar_demand + ", ar_date=" + ar_date
				+ ", ar_identity=" + ar_identity + ", ar_phone=" + ar_phone
				+ ", status=" + status + "]";
	}
	
	
}
