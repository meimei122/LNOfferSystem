package org.yangpeng.util;

public class InformationConversionUtil {
	private String[] erroMes;
	/**
	 * 身份要求信息转换
	 * @param identity
	 * @return String型的数组
	 */
	public String[] getIdentity(String identity){
		if(identity.length()>=1){
			String[] data = identity.split(",");
			String[] result = new String[data.length];
			for(int i = 0 ; i < data.length ; i++){
				String mes = data[i];
				result[i] = getIdentityMes(mes);
			}
			return result;
			
		}else{
			erroMes[0] = "身份信息要求异常，请联系管理员";
			return erroMes;
		}
	}
	
	public String getIdentityMes(String mes){
		switch (mes) {
		case "0":
			return "不限";
		case "1":
			return "大学生家教";
		case "2":
			return "教育机构";
		case "3":
			return "在职教师";
		case "4":
			return "辅导机构";
		default:
			return "身份信息有误，请联系管理员";
		}
	}
	
	public String getSex(String mes){
		switch (mes) {
		case "0":
			return "不限";
		case "1":
			return "男";
		case "2":
			return "女";
		default:
			return "身份信息有误，请联系管理员";
		}
	}
	
	public String getTeaching(String mes){
		switch (mes) {
		case "0":
			return "面议";
		case "1":
			return "一周一次";
		case "2":
			return "一周两次";
		default:
			return "身份信息有误，请联系管理员";
		}
	}
	public String getMoney(String mes){
		switch (mes) {
		case "0":
			return "面议";
		default:
			return "身份信息有误，请联系管理员";
		}
	}
	
}
