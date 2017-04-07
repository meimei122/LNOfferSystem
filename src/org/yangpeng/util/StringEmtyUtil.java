package org.yangpeng.util;

public class StringEmtyUtil {
	public boolean  StringEmty(String something){
		if("".equals(something) || null == something){
			return true;
		}else{
			return false;
		}
	}
}
