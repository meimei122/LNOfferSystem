package org.yangpeng.service;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.ArtsStu;

public interface ArtsStuService {
	/**
	 * 增加高中学生找家教信息
	 * @param map
	 * @return
	 */
	public int insertStu(Map<String, String> map);
	/**
	 * 查询学生信息
	 * @param map
	 * @return
	 */
	public List<ArtsStu> selectStu(Map<String, String> map);
	/**
	 * 添加信息的时候，判断此信息是否重复，根据姓名和求教科目进行判断
	 * service层
	 * @param map
	 * @return
	 */
	public List<ArtsStu> selectRepeatStu(Map<String, String> map);
}
