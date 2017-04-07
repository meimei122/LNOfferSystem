package org.yangpeng.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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

@Controller
@RequestMapping("/data")
public class PageDataAction {
	@Resource
	public PageDataService pageDataService;
	@RequestMapping("/price")
	@ResponseBody
	public List<chargePriceTo> getPrice(){
		List<chargePriceTo> param = pageDataService.selectPrice();
		return param;
	}
	
	@RequestMapping("/type")
	@ResponseBody
	public List<userTypeTo> getUserType(){
		List<userTypeTo> param = pageDataService.selectUserType();
		return param;
	}
	@RequestMapping("/question")
	@ResponseBody
	public List<securityQuestionTo> getQuestion(){
		List<securityQuestionTo> param =pageDataService.selectQuestion();
		return param;
	}
	@RequestMapping("/allSex")
	@ResponseBody
	public List<SexTo> getSexAll(){
		List<SexTo> param = pageDataService.selectSexAll();
		return param;
	}
	@RequestMapping("/sex")
	@ResponseBody
	public List<SexTo> getSex(){
		List<SexTo>  param = pageDataService.selectSex();
		return param;
		
	}
	@RequestMapping("/prc")
	@ResponseBody
	public List<St_Class> getPR(){
		List<St_Class> param = pageDataService.selectPR();
		return param;
		
	}
	@RequestMapping("/arc")
	@ResponseBody
	public List<St_Class> getAR(){
		List<St_Class> param = pageDataService.selectAR();
		return param;
		
	}
	@RequestMapping("/ttime")
	@ResponseBody
	public List<TutorTimeTo> getTTime(){
		List<TutorTimeTo> param = pageDataService.selectTTime();
		return param;
		
	}

	@RequestMapping("/tmethod")
	@ResponseBody
	public List<TutorMethodTo> getTMethod(){
		List<TutorMethodTo> param = pageDataService.selectTMethod();
		return param;
		
	}
	@RequestMapping("/ttype")
	@ResponseBody
	public List<TutorTypeTo> getTType(){
		List<TutorTypeTo> param = pageDataService.selectTType();
		return param;
		
	}
	@RequestMapping("/tgrade")
	@ResponseBody
	public List<TutorGradeTo> getTGrade(){
		List<TutorGradeTo> param =  pageDataService.selectTGrade();
		return param;
		
	}
}
