package org.yangpeng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.yangpeng.dao.PrimaryStuDao;
import org.yangpeng.entity.PrimaryStu;
import org.yangpeng.service.PrimaryStuService;

@Service("primaryStuService")
public class PrimaryStuServiceImpl implements PrimaryStuService{
	@Resource
	public PrimaryStuDao primaryStuDao;
	@Override
	public int insertStu(Map<String, String> map) {
		// TODO Auto-generated method stub
		return primaryStuDao.addStu(map);
	}
	@Override
	public List<PrimaryStu> selectStu(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return primaryStuDao.queryStu(map);
	}
	@Override
	public List<PrimaryStu> selectRepeatStu(Map<String, String> map) {
		// TODO Auto-generated method stub
		return primaryStuDao.queryRepeatStu(map);
	}
	@Override
	public int queryCountStu() {
		// TODO Auto-generated method stub
		return primaryStuDao.queryCountStu();
	}
	@Override
	public List<PrimaryStu> StuMes(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return primaryStuDao.stuMes(map);
	}
	
}
