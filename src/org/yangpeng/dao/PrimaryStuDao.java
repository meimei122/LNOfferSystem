package org.yangpeng.dao;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.PrimaryStu;

public interface PrimaryStuDao {
	/**
	 * 增加初中学生找家教信息
	 * @param map
	 * @return
	 */
	public int addStu(Map<String,String> map);
	/**
	 * 查询学生信息
	 * @param map
	 * @return
	 */
	public 	List<PrimaryStu> queryStu(Map<String, Object> map);
	
	/**
	 * 添加信息的时候，判断此信息是否重复，根据姓名和求教科目进行判断
	 * @param map
	 * @return
	 */
	public  List<PrimaryStu> queryRepeatStu(Map<String, String> map);
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
	public List<PrimaryStu> stuMes(Map<String, Object> map);
}
