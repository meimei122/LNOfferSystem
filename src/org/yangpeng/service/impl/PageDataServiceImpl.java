package org.yangpeng.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.yangpeng.dao.PageDataDao;
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
import org.yangpeng.service.PageDataService;

@Service("pageDataService")
public class PageDataServiceImpl implements PageDataService{
	@Resource
	public PageDataDao pagaDataDao;
	@Override
	public List<chargePriceTo> selectPrice() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectPrice();
	}
	@Override
	public List<userTypeTo> selectUserType() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectUserType();
	}
	@Override
	public List<securityQuestionTo> selectQuestion() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectQuestion();
	}
	@Override
	public List<SexTo> selectSexAll() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectSexAll();
	}
	@Override
	public List<SexTo> selectSex() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectSex();
	}
	@Override
	public List<St_Class> selectPR() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectPR();
	}
	@Override
	public List<St_Class> selectAR() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectAR();
	}
	@Override
	public List<TutorTimeTo> selectTTime() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectTTime();
	}
	@Override
	public List<TutorMethodTo> selectTMethod() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectTMethod();
	}
	@Override
	public List<TutorTypeTo> selectTType() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectTType();
	}
	@Override
	public List<TutorGradeTo> selectTGrade() {
		// TODO Auto-generated method stub
		return pagaDataDao.selectTGrade();
	}
	@Override
	public SendEmail selectEmailMessage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return pagaDataDao.selectEmailMessage(map);
	}

}
