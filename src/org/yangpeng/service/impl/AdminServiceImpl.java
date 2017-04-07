package org.yangpeng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.yangpeng.dao.AdminDao;
import org.yangpeng.entity.Admin;
import org.yangpeng.entity.User;
import org.yangpeng.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	
	@Resource
	public AdminDao adminDao;
	@Override
	public List<Admin> loginAdmin(Map<String, String> map) {
		// TODO Auto-generated method stub
		return adminDao.loginAdmin(map);
	}
	@Override
	public User selectUserName(Map<String, String> map) {
		// TODO Auto-generated method stub
		return adminDao.selectUserName(map);
	}
	@Override
	public Admin selectAdminId(Map<String, String> map) {
		// TODO Auto-generated method stub
		return adminDao.selectAdminId(map);
	}
	@Override
	public int insertAdmin(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return adminDao.addAdmin(map);
	}
	@Override
	public Map<String, Object> selectAdminName(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return adminDao.selectAdminName(map);
	}
	@Override
	public boolean upAdminName(Map<String, String> map) {
		// TODO Auto-generated method stub
		return adminDao.upAdminName(map);
	}
	@Override
	public boolean upAdminPasw(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return adminDao.upAdminPasw(map);
	}

}
