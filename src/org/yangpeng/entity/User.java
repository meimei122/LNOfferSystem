package org.yangpeng.entity;

import java.util.HashMap;
import java.util.Map;

public class User {
	private Integer adminId;
	private String  userName;
	private String  adminPasw;
	private String userPhone;
	private String  userEmail;
	private String     userTypeId;
	private String  userAdress;
	private String  userMotto;
	private String     questionid;
	private String  problemContent;
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Integer getAdminId() {
		return adminId;
	}
	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAdminPasw() {
		return adminPasw;
	}
	public void setAdminPasw(String adminPasw) {
		this.adminPasw = adminPasw;
	}

	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserAdress() {
		return userAdress;
	}
	public void setUserAdress(String userAdress) {
		this.userAdress = userAdress;
	}
	public String getUserMotto() {
		return userMotto;
	}
	public void setUserMotto(String userMotto) {
		this.userMotto = userMotto;
	}

	public String getProblemContent() {
		return problemContent;
	}
	public void setProblemContent(String problemContent) {
		this.problemContent = problemContent;
	}
	/**
	 * 增加用户信息专用的map
	 * @param user
	 * @return
	 */
	public Map<String,Object> getUserMap(User user){
		Map<String,Object> map = new HashMap<>();
		map.put("adminId", 0);
		map.put("userName", user.getUserName());
		map.put("adminPasw", user.getAdminPasw());
		map.put("userPhone", user.getUserPhone());
		map.put("userEmail", user.getUserEmail());
		map.put("userTypeId",Integer.parseInt(user.getUserTypeId()));
		map.put("userAdress",user.getUserAdress());
		map.put("userMotto", user.getUserMotto());
		map.put("questionId",Integer.parseInt(user.getQuestionid()));
		map.put("problemContent", user.getProblemContent());
		return map;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getUserTypeId() {
		return userTypeId;
	}
	public void setUserTypeId(String userTypeId) {
		this.userTypeId = userTypeId;
	}
	public String getQuestionid() {
		return questionid;
	}
	public void setQuestionid(String questionid) {
		this.questionid = questionid;
	}
	@Override
	public String toString() {
		return "User [userName=" + userName + ", adminPasw=" + adminPasw
				+ ", userPhone=" + userPhone + ", userEmail=" + userEmail
				+ ", userTypeId=" + userTypeId + ", userAdress=" + userAdress
				+ ", userMotto=" + userMotto + ", questionid=" + questionid
				+ ", problemContent=" + problemContent + "]";
	}
	
}
