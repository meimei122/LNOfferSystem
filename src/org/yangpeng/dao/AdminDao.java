package org.yangpeng.dao;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.Admin;
import org.yangpeng.entity.User;

public interface AdminDao {
	public List<Admin> loginAdmin(Map<String,String> map);
	public User    selectUserName(Map<String,String> map);
	public Admin   selectAdminId(Map<String,String> map);
	public Map<String, Object>   selectAdminName(Map<String, Object> map);
	public int     addAdmin(Map<String,Object> map);
	public boolean upAdminName(Map<String,String> map);
	public boolean upAdminPasw(Map<String,Object> map);
}
