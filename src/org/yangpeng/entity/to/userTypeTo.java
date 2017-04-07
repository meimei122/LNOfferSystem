package org.yangpeng.entity.to;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class userTypeTo {
	private int userTypeId;
	private String typecontest;
	public int getUserTypeId() {
		return userTypeId;
	}
	public void setUserTypeId(int userTypeId) {
		this.userTypeId = userTypeId;
	}
	public String getTypecontest() {
		return typecontest;
	}
	public void setTypecontest(String typecontest) {
		this.typecontest = typecontest;
	}
	public userTypeTo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public userTypeTo(int userTypeId, String typecontest) {
		super();
		this.userTypeId = userTypeId;
		this.typecontest = typecontest;
	}
	 public List<Map<String,Object>> getUserTypeTo(List<userTypeTo> list){
		Map<String,Object> map = new HashMap<String,Object>();
		List<Map<String,Object>> param = new ArrayList<Map<String,Object>>();
		for(userTypeTo u : list){
			map.put("userTypeId", u.getUserTypeId());
			map.put("typecontest", u.getTypecontest());
			param.add(map);
		}
		return param;
	 }
	
}
