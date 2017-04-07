package org.yangpeng.util;

import java.util.HashMap;
import java.util.Map;


public class PageUtil {
	private int startNum; //起始页面
	private int endNum;  //结束页面
	private final  int pageSize = 5;
	/**
	 * 获取分页的菜单
	 * @param pageNum 总页数
	 * @param currentPage 当前页数
	 * @return
	 */
	public  Map<String,Object>  getPageSize(int pageNum,int currentPage){
		Map<String,Object> map = new HashMap<String,Object>(); //存储起始页面和结束页面
		if(pageNum <= 5){
			 startNum=1;  
			 if(pageNum>pageSize){  
			      endNum=pageNum;  
			 }else{  
			      endNum=pageNum;  
			 }
			 map.put("startNum", startNum);
			 map.put("endNum", endNum);
			return map;
		}else{
			if(currentPage+5>=pageNum){  
		        endNum=pageNum;  
		        if(pageNum-pageSize>=1){  
		            startNum=pageNum-pageSize+1;  
		        }else{  
		            startNum=1;  
		        }  
		    }else{  
		        endNum=currentPage+5;  
		        startNum=endNum-pageSize+1;  
		    }
			map.put("startNum", startNum);
			map.put("endNum", endNum);
			return map;
		}
	}
	
}
