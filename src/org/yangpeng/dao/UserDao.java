package org.yangpeng.dao;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.Admin;
import org.yangpeng.entity.User;

public interface UserDao {
	public int addUser(Map<String,Object> map);
	public Map<String,Object> selectUserMes(Map<String,Object> map);
	public List<Admin> adminNameSelect(Map<String,Object> map);
	public User adminMesSelect(Map<String,Object> map);
	public boolean upUserMessage(Map<String,Object> map);
}
