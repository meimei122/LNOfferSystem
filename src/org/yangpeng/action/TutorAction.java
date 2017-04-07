package org.yangpeng.action;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.NestedServletException;
import org.yangpeng.entity.Tutor;
import org.yangpeng.entity.dto.TutorDto;
import org.yangpeng.service.TutorService;

@Controller
@RequestMapping("/tutor")
public class TutorAction {
	@Resource
	public TutorService tutorService;
	@RequestMapping("/insert")
	public Map<String,String> insertTutor(Tutor tutor,HttpServletRequest request){
		System.out.println(tutor);
		Map<String,String> map = new HashMap<String,String>();
		String adminId = (String) request.getSession().getAttribute("adminId");
		tutor.setAdminId(adminId);
		String tutorDate = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
		tutor.setTutorDate(tutorDate);
		Map<String,Object> param = tutor.getTutorMap(tutor);
		System.out.println(param);
		int a = tutorService.insertTutor(param);
		if(a>0){
			map.put("Mes", "suc");
			//添加发邮件信息
		}else{
			map.put("Mes", "erro");
		}
		return map;
	}
	public Map<String,String> updateTutorMes(Tutor tutor,HttpServletRequest request){
		Map<String,String> map = new HashMap<String, String>();
		//根据科目进行比对，然后
		return map;
		
	}
	
	@RequestMapping("/adminmanage")
	public String selectTutorMes(HttpServletRequest request,Model model){
		try{
			Map<String,Object> param =  new HashMap<String,Object>();
			String adminId = (String) request.getSession().getAttribute("adminId");
			param.put("adminId", adminId);
			List<String>   array  =  tutorService.selectClass(param);
			List<TutorDto> result = new ArrayList<TutorDto>();
			for(int i = 0 ; i < array.size();i++){
				param.put("tutorId", array.get(i));
				result.add(tutorService.selectTutor(param));
			}
			model.addAttribute("tutorDto", result);
			System.out.println(result);
			return "supervise/adminmanage";
		}catch (NullPointerException e){
			return "redirect:/indexAction/timeOut.do";
		}
	}
}
