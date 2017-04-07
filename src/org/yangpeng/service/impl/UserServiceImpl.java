package org.yangpeng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.yangpeng.dao.UserDao;
import org.yangpeng.entity.Admin;
import org.yangpeng.entity.User;
import org.yangpeng.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource
	public UserDao userdao;
	@Override
	public int insertStu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userdao.addUser(map);
	}
	@Override
	public Map<String, Object> selectUserMes(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userdao.selectUserMes(map);
	}
	@Override
	public List<Admin> adminNameSelect(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userdao.adminNameSelect(map);
	}
	@Override
	public User adminMesSelect(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userdao.adminMesSelect(map);
	}
	@Override
	public boolean upUserMessage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userdao.upUserMessage(map);
	}

}
