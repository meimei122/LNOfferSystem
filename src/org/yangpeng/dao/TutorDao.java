package org.yangpeng.dao;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.dto.TutorDto;

public interface TutorDao {
	public int addTutor(Map<String,Object> map);
	public List<String> selectClass(Map<String,Object> map);
	public TutorDto selectTutor(Map<String,Object> map);
	public int updateStatus(Map<String,Object> map);
}
