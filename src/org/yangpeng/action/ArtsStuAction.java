package org.yangpeng.action;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.yangpeng.entity.ArtsStu;
import org.yangpeng.service.ArtsStuService;

@Controller
@RequestMapping("/arts")
public class ArtsStuAction {
	@Resource
	private ArtsStuService artsStuService;
	/**
	 * 高中生信息采集
	 * @param arts
	 * @param out
	 */
	@RequestMapping("/insert")
	public Map<String,String> insertArtsStu(ArtsStu arts,HttpServletRequest request){
		String pa_date = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
		Map<String , String> map = new HashMap<String, String>();
		String adminId = (String) request.getSession().getAttribute("adminId");
		map.put("ar_name", arts.getAr_name());
		map.put("ar_subject",arts.getAr_subject());
		List<ArtsStu> as_list = artsStuService.selectRepeatStu(map);
		Map<String,String> param = new HashMap<String,String>();
		if(as_list.size() == 0){
			map.put("ar_adress", arts.getAr_adress());
			map.put("ar_phone", arts.getAr_phone());
			map.put("ar_identity", arts.getAr_identity());
			map.put("ar_sex",arts.getAr_sex());
			map.put("ar_teaching",arts.getAr_teaching());
			map.put("ar_money",arts.getAr_money());
			map.put("ar_demand",arts.getAr_demand());
			map.put("ar_date",  pa_date);
			map.put("status", "1");
			map.put("userid", adminId);
			int a = artsStuService.insertStu(map);
			if(a>0){
				param.put("Mens", "insert_success");
				//out.print("insert_success");
			}else{
				param.put("Mens", "insert_fail");
				//out.print("insert_fail");
			}
		}else{
			param.put("Mens", "insert_erro");
			//out.print("insert_erro");
		}
		return map;
		
	}
	
}
