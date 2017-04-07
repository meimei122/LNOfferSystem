package org.yangpeng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.yangpeng.dao.ArtsStuDao;
import org.yangpeng.entity.ArtsStu;
import org.yangpeng.service.ArtsStuService;

@Service("artsStuService")
public class ArtsStuServiceImpl implements ArtsStuService {
	@Resource
	public ArtsStuDao artsStuDao;
	@Override
	public int insertStu(Map<String, String> map) {
		// TODO Auto-generated method stub
		return artsStuDao.addStu(map);
	}
	@Override
	public List<ArtsStu> selectStu(Map<String, String> map) {
		// TODO Auto-generated method stub
		return artsStuDao.queryStu(map);
	}
	@Override
	public List<ArtsStu> selectRepeatStu(Map<String, String> map) {
		// TODO Auto-generated method stub
		return artsStuDao.queryRepeatStu(map);
	}

}
