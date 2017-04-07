package org.yangpeng.util;

import org.yangpeng.email.MailSenderInfo;
import org.yangpeng.email.SimpleMailSender;



public class SendMessageUtil {
	
	private final String mailServerHost = "smtp.163.com";
	private final String mailServerPort = "25";
	private final boolean validate = true;  
	private final String userName ="13277412303";    
	private final String password ="163SHOUQUAN";
	private final String fromAddress = "13277412303@163.com"; 
	
	/**
	 * 
	 * @param userEmail 收信人邮箱
	 * @param emailSubject 邮件主题
	 * @param emailMessage 邮件信息
	 * @return
	 */
	public boolean sendEmai(String userEmail,String emailSubject,String emailMessage){
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost(mailServerHost);    
	    mailInfo.setMailServerPort(mailServerPort);    
	    mailInfo.setValidate(validate);    
	    mailInfo.setUserName(userName);    
	    mailInfo.setPassword(password);
	    mailInfo.setFromAddress(fromAddress);    
	    mailInfo.setToAddress(userEmail);    
	    mailInfo.setSubject(emailSubject);    
	    mailInfo.setContent(emailMessage);  
		SimpleMailSender sms = new SimpleMailSender();
		boolean flog = sms.sendTextMail(mailInfo);
	    //boolean flog = SimpleMailSender.sendHtmlMail(mailInfo);
		return flog;
	}
}
