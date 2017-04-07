package org.yangpeng.service;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.Admin;
import org.yangpeng.entity.User;

public interface AdminService {
	/**
	 * 查询登录信息
	 * @param map
	 * @return
	 */
	public List<Admin> loginAdmin(Map<String,String> map);
	/**
	 * 查询登录用户的姓名
	 * @param map
	 * @return
	 */
	public User    selectUserName(Map<String,String> map);
	/**
	 * 查询登录用户的Id
	 * @param map
	 * @return
	 */
	public Admin   selectAdminId(Map<String,String> map);
	/**
	 * 增加用户登录信息
	 * @param map
	 * @return
	 */
	public int     insertAdmin(Map<String,Object> map);
	/**
	 * 根据Id查用户名
	 * @param map
	 * @return
	 */
	public Map<String, Object>   selectAdminName(Map<String, Object> map);
	/**
	 * 根据用户名改用户名
	 * @param map
	 * @return
	 */
	public boolean upAdminName(Map<String,String> map);
	/**
	 * 根据用户Id更改密码
	 * @param map
	 * @return
	 */
	public boolean upAdminPasw(Map<String,Object> map);
}
