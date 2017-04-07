package org.yangpeng.util;

import java.util.Map;

public class EmailMesUtil {
	/**
	 * 
	 * @param map
	 * @return
	 */
	public String getMes(Map<String,Object> map){
		int emailCode = (int) map.get("emailCode");
		if(emailCode == 1001){
			String adminName = (String) map.get("adminName");
			String date = (String) map.get("date");
			String userNmae = (String) map.get("userName");
			String emailMessage = (String) map.get("emailMessag");
			String phone = (String) map.get("phone");
			String email = (String) map.get("email");
			emailMessage = emailMessage.replace("${userName}", ""+userNmae+"");
			emailMessage = emailMessage.replace("${date}", ""+date+"");
			emailMessage = emailMessage.replace("${adminName}", ""+adminName+"");
			emailMessage = emailMessage.replace("${phone}", ""+phone+"");
			emailMessage = emailMessage.replace("${email}", ""+email+"");
			System.out.println(emailMessage);
			return emailMessage;
		}else if(emailCode == 1002){
			String adminName = (String) map.get("adminName");
			String date = (String) map.get("date");
			String userNmae = (String) map.get("userName");
			String emailMessage = (String) map.get("emailMessag");
			String phone = (String) map.get("phone");
			String email = (String) map.get("email");
			emailMessage = emailMessage.replace("${userName}", ""+userNmae+"");
			emailMessage = emailMessage.replace("${date}", ""+date+"");
			emailMessage = emailMessage.replace("${adminName}", ""+adminName+"");
			emailMessage = emailMessage.replace("${phone}", ""+phone+"");
			emailMessage = emailMessage.replace("${email}", ""+email+"");
			System.out.println(emailMessage);
			return emailMessage;
		}else if(emailCode == 2001){
			String date = (String) map.get("date");
			String userNmae = (String) map.get("userName");
			String emailMessage = (String) map.get("emailMessag");
			emailMessage = emailMessage.replace("${userName}", ""+userNmae+"");
			emailMessage = emailMessage.replace("${date}", ""+date+"");
			return emailMessage;
		}else if(emailCode == 2002){
			String adminName = (String) map.get("adminName");
			String date = (String) map.get("date");
			String userNmae = (String) map.get("userName");
			String emailMessage = (String) map.get("emailMessag");
			emailMessage = emailMessage.replace("${userName}", ""+userNmae+"");
			emailMessage = emailMessage.replace("${date}", ""+date+"");
			emailMessage = emailMessage.replace("${adminName}", ""+adminName+"");
			return emailMessage;
		}else if(emailCode == 3001){
			String date = (String) map.get("date");
			String userNmae = (String) map.get("userName");
			String emailMessage = (String) map.get("emailMessag");
			String phone = (String) map.get("phone");
			String email = (String) map.get("email");
			String className = (String) map.get("className");
			emailMessage = emailMessage.replace("${userName}", ""+userNmae+"");
			emailMessage = emailMessage.replace("${date}", ""+date+"");
			emailMessage = emailMessage.replace("${phone}", ""+phone+"");
			emailMessage = emailMessage.replace("${email}", ""+email+"");
			emailMessage = emailMessage.replace("${className}", ""+className+"");
			return emailMessage;
		}else if(emailCode == 3002){
			String date = (String) map.get("date");
			String userNmae = (String) map.get("userName");
			String emailMessage = (String) map.get("emailMessag");
			String phone = (String) map.get("phone");
			String email = (String) map.get("email");
			String className = (String) map.get("className");
			emailMessage = emailMessage.replace("${userName}", ""+userNmae+"");
			emailMessage = emailMessage.replace("${date}", ""+date+"");
			emailMessage = emailMessage.replace("${phone}", ""+phone+"");
			emailMessage = emailMessage.replace("${email}", ""+email+"");
			emailMessage = emailMessage.replace("${className}", ""+className+"");
			return emailMessage;
		}else{
			return null;
		}
	}
}
