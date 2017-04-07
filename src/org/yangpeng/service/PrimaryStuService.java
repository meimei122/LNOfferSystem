package org.yangpeng.service;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.PrimaryStu;

public interface PrimaryStuService {
	/**
	 * 增加高中文科学生找家教信息
	 * @param map
	 * @return
	 */
	public int insertStu(Map<String, String> map);
	/**
	 * 查询学生信息
	 * @param map
	 * @return
	 */
	public List<PrimaryStu> selectStu(Map<String, Object> map);
	/**
	 * 添加信息的时候，判断此信息是否重复，根据姓名和求教科目进行判断
	 * service层
	 * @param map
	 * @return
	 */
	public List<PrimaryStu> selectRepeatStu(Map<String, String> map);
	/**
	 * 查询学生信息条数
	 * @param map
	 * @return
	 */
	public int queryCountStu();
	/**
	 * 查询学生的详细信息
	 * @param map
	 * @return
	 */
	public List<PrimaryStu> StuMes(Map<String, Object> map);

}
