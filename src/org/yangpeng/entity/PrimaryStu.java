package org.yangpeng.entity;
/**
 * 初中
 * @author yang.peng
 *
 */
public class PrimaryStu {
	private Integer pr_id;
	private String pr_name;
	private String pr_adress;
	private String pr_sex;
	private String pr_teaching;
	private String pr_money;
	private String pr_subject;
	private String pr_demand;
	private String pr_date;
	private String pr_identity;
	private String pr_phone;
	private String status;
	public Integer getPr_id() {
		return pr_id;
	}
	public void setPr_id(Integer pr_id) {
		this.pr_id = pr_id;
	}
	public String getPr_name() {
		return pr_name;
	}
	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}
	public String getPr_adress() {
		return pr_adress;
	}
	public void setPr_adress(String pr_adress) {
		this.pr_adress = pr_adress;
	}
	public String getPr_sex() {
		return pr_sex;
	}
	public void setPr_sex(String pr_sex) {
		this.pr_sex = pr_sex;
	}
	public String getPr_teaching() {
		return pr_teaching;
	}
	public void setPr_teaching(String pr_teaching) {
		this.pr_teaching = pr_teaching;
	}
	public String getPr_money() {
		return pr_money;
	}
	public void setPr_money(String pr_money) {
		this.pr_money = pr_money;
	}
	public String getPr_subject() {
		return pr_subject;
	}
	public void setPr_subject(String pr_subject) {
		this.pr_subject = pr_subject;
	}
	public String getPr_demand() {
		return pr_demand;
	}
	public void setPr_demand(String pr_demand) {
		this.pr_demand = pr_demand;
	}
	public String getPr_date() {
		return pr_date;
	}
	public void setPr_date(String pr_date) {
		this.pr_date = pr_date;
	}
	public String getPr_identity() {
		return pr_identity;
	}
	public void setPr_identity(String pr_identity) {
		this.pr_identity = pr_identity;
	}
	public String getPr_phone() {
		return pr_phone;
	}
	public void setPr_phone(String pr_phone) {
		this.pr_phone = pr_phone;
	}
	
	public PrimaryStu(Integer pr_id, String pr_name, String pr_adress,
			String pr_sex, String pr_teaching, String pr_money,
			String pr_subject, String pr_demand, String pr_date,
			String pr_identity, String pr_phone, String status) {
		super();
		this.pr_id = pr_id;
		this.pr_name = pr_name;
		this.pr_adress = pr_adress;
		this.pr_sex = pr_sex;
		this.pr_teaching = pr_teaching;
		this.pr_money = pr_money;
		this.pr_subject = pr_subject;
		this.pr_demand = pr_demand;
		this.pr_date = pr_date;
		this.pr_identity = pr_identity;
		this.pr_phone = pr_phone;
		this.status = status;
	}
	public PrimaryStu() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "PrimaryStu [pr_id=" + pr_id + ", pr_name=" + pr_name
				+ ", pr_adress=" + pr_adress + ", pr_sex=" + pr_sex
				+ ", pr_teaching=" + pr_teaching + ", pr_money=" + pr_money
				+ ", pr_subject=" + pr_subject + ", pr_demand=" + pr_demand
				+ ", pr_date=" + pr_date + ", pr_identity=" + pr_identity
				+ ", pr_phone=" + pr_phone + ", status=" + status + "]";
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
