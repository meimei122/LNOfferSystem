package org.yangpeng.entity;

public class Admin {
	private Integer adminId;
	private String adminName;
	private String adminPasw;
	private String creatDate;
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public String getAdminPasw() {
		return adminPasw;
	}
	public void setAdminPasw(String adminPasw) {
		this.adminPasw = adminPasw;
	}
	public String getCreatDate() {
		return creatDate;
	}
	public void setCreatDate(String creatDate) {
		this.creatDate = creatDate;
	}
	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminName=" + adminName
				+ ", adminPasw=" + adminPasw + ",  creatDate=" + creatDate + "]";
	}
	public Admin(String adminName, String adminPasw,
			String creatDate) {
		super();
		this.adminName = adminName;
		this.adminPasw = adminPasw;
		this.creatDate = creatDate;
	}
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
