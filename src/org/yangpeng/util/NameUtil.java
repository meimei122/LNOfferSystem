package org.yangpeng.util;

import java.util.Random;

public class NameUtil {
	/**
	 * 用户名重复，将随机生成用户名，保存到数据库
	 * @return
	 */
	public String getRandomName(){
		char[] codes = { '0','1','2','3','4','5','6','7','8','9',
				         'A','B','C','D','E','F','G','H','I','J',
				         'K','L','M','N','O','P','Q','R','S','T',
				         'U','V','W','X','Y','Z','a','b','c','d',
				         'e','f','g','h','i','j','k','l','m','n',
				         'o','p','q','r','s','t','u','v','w','x',
			             'y','z'};
		Random random = new Random();
		StringBuffer adminName = new StringBuffer();
		for(int i = 0 ; i < 9 ; i++){
			char param = codes[random.nextInt(62)];
			adminName.append(param);
		}
		return adminName.toString();
	}
}
