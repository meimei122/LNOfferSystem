package org.yangpeng.dao;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.ArtsStu;

public interface ArtsStuDao {
	/**
	 * 增加初高中文科学生找家教信息
	 * @param map
	 * @return
	 */
	public int addStu(Map<String, String> map);
	/**
	 * 查询学生信息
	 * @param map
	 * @return
	 */
	public 	List<ArtsStu> queryStu(Map<String, String> map);
	
	/**
	 * 添加信息的时候，判断此信息是否重复，根据姓名和求教科目进行判断
	 * @param map
	 * @return
	 */
	public  List<ArtsStu> queryRepeatStu(Map<String, String> map);
}
