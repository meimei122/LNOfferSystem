package org.yangpeng.service;

import java.util.List;
import java.util.Map;

import org.yangpeng.entity.SendEmail;
import org.yangpeng.entity.to.St_Class;
import org.yangpeng.entity.to.SexTo;
import org.yangpeng.entity.to.TutorGradeTo;
import org.yangpeng.entity.to.TutorMethodTo;
import org.yangpeng.entity.to.TutorTimeTo;
import org.yangpeng.entity.to.TutorTypeTo;
import org.yangpeng.entity.to.chargePriceTo;
import org.yangpeng.entity.to.securityQuestionTo;
import org.yangpeng.entity.to.userTypeTo;

public interface PageDataService {
	/**
	 * 查询价格信息
	 * @return
	 */
	public List<chargePriceTo> selectPrice();
	/**
	 * 查询家教类型
	 * @return
	 */
	public List<userTypeTo> selectUserType();
	/**
	 * 查询密保问题
	 * @return
	 */
	public List<securityQuestionTo> selectQuestion();
	/**
	 * 查询全部的性别
	 * @return
	 */
	public List<SexTo> selectSexAll();
	/**
	 * 查询只有男女的性别
	 * @return
	 */
	public List<SexTo> selectSex();
	/**
	 * 查询初中科目
	 * @return
	 */
	public List<St_Class> selectPR();
	/**
	 * 查询高中课目
	 * @return
	 */
	public List<St_Class> selectAR();
	/**
	 * 查询家教经验
	 * @return
	 */
	public List<TutorTimeTo> selectTTime();
	/**
	 * 查询授课方式
	 * @return
	 */
	public List<TutorMethodTo> selectTMethod();
	/**
	 * 查询家教类型
	 * @return
	 */
	public List<TutorTypeTo> selectTType();
	/**
	 * 查询家教代课年级
	 * @return
	 */
	public List<TutorGradeTo> selectTGrade();
	public SendEmail selectEmailMessage(Map<String,Object> map);
}
