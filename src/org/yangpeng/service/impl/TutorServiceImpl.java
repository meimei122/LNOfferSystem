package org.yangpeng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.yangpeng.dao.TutorDao;
import org.yangpeng.entity.dto.TutorDto;
import org.yangpeng.service.TutorService;

@Service("tutorService")
public class TutorServiceImpl implements TutorService {
	@Resource
	public TutorDao tutorDao;
	@Override
	public int insertTutor(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return tutorDao.addTutor(map);
	}
	@Override
	public List<String> selectClass(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return tutorDao.selectClass(map);
	}
	@Override
	public TutorDto selectTutor(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return tutorDao.selectTutor(map);
	}
	@Override
	public int updateStatus(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return tutorDao.updateStatus(map);
	}

}
