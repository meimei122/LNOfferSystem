package org.yangpeng.entity;


public class SendEmail {
	/**
	 *1 是进行注册的email
	 *2 是进行修改信息的email
	 *3 是进行发布信息的email
	 */
	private int emailType;
	/**
	 * 1001  注册用户名没重复发送的邮件
	 * 1002  注册用户名重复发送的邮件 
	 * 2001  修改密码发送的邮件
	 * 2002  修改用户名发送的邮件
	 * 3001  发布学生信息发送的邮件
	 * 3002  发送家教信息发布的邮件
	 */
	private int emailCode;
	private String emailMessage;
	public int getEmailType() {
		return emailType;
	}
	public void setEmailType(int emailType) {
		this.emailType = emailType;
	}
	public int getEmailCode() {
		return emailCode;
	}
	public void setEmailCode(int emailCode) {
		this.emailCode = emailCode;
	}
	public String getEmailMessage() {
		return emailMessage;
	}
	public void setEmailMessage(String emailMessage) {
		this.emailMessage = emailMessage;
	}
	public SendEmail(int emailType, int emailCode, String emailMessage) {
		super();
		this.emailType = emailType;
		this.emailCode = emailCode;
		this.emailMessage = emailMessage;
	}
	public SendEmail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
