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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yangpeng.entity.Page;
import org.yangpeng.entity.PrimaryStu;
import org.yangpeng.service.PrimaryStuService;
import org.yangpeng.util.InformationConversionUtil;
import org.yangpeng.util.PageUtil;

@Controller
@RequestMapping("/primary")
public class PrimaryStuAction {
	@Resource
	private PrimaryStuService primaryStuService;
	/**
	 * 初中家教信息录入
	 * @param primaryStu
	 * @param out
	 */
	@RequestMapping("/insert")
	public Map<String , String> addPrimaryStu(PrimaryStu primaryStu,Model model,HttpServletRequest request){
		String pa_date = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
		Map<String , String> map = new HashMap<String, String>();
		Map<String , String> resultMes = new HashMap<String, String>();
		//String pr_adress = new String(primaryStu.getpr_adress().getBytes("ISO-8859-1"),"UTF-8");
		//String pr_demand = new String(primaryStu.getpr_demand().getBytes("ISO-8859-1"),"UTF-8");
		String adminId = (String) request.getSession().getAttribute("adminId");
		map.put("pr_name", primaryStu.getPr_name());
		map.put("pr_subject",primaryStu.getPr_subject());
		List<PrimaryStu> pr_list = primaryStuService.selectRepeatStu(map);
		if(pr_list.size() == 0){
			map.put("pr_adress", primaryStu.getPr_adress());
			map.put("pr_phone", primaryStu.getPr_phone());
			map.put("pr_identity", primaryStu.getPr_identity());
			map.put("pr_sex",primaryStu.getPr_sex());
			map.put("pr_teaching",primaryStu.getPr_teaching());
			map.put("pr_money",primaryStu.getPr_money());
			map.put("pr_demand",primaryStu.getPr_demand());
			map.put("pr_date",  pa_date);
			map.put("userid", adminId);
			map.put("status", "1");
			int i = primaryStuService.insertStu(map);
			if(i>0){
				resultMes.put("resultMes", "insert_success");
				return resultMes;
			}else{
				resultMes.put("resultMes", "insert_fail");
				return resultMes;
			}
		}else{
			resultMes.put("resultMes", "insert_erro");
			return resultMes;
		}
	}
	
	@RequestMapping("/message")
	public String  selectStu(@RequestParam(name="curPage",required=false)String pageNumber,Model model){
		Map<String , Object> map = new HashMap<String, Object>();
		Map<String , Object> result = new HashMap<String, Object>();
		String currentPageStr = pageNumber;  //当前页数
        int pageSize = 5; //每页显示的数据数目
        int countSize = primaryStuService.queryCountStu();//总记录条数
        Page page = new Page();
        page.init(countSize, pageSize, currentPageStr);
        map.put("size", pageSize);
        map.put("index", (page.getCurrentPage()-1)*pageSize);
        List<PrimaryStu> pr_list = primaryStuService.selectStu(map);
        PageUtil pageUtil = new PageUtil();
        Map<String,Object> pageMap = pageUtil.getPageSize(page.getPageNum(), page.getCurrentPage());
        result.put("rows", pr_list);
        result.put("page", page);
        result.put("pageMap", pageMap);
        model.addAttribute("priResult", result);
		return "typography";
	}
	
	@RequestMapping("/showMes")
	@ResponseBody
	public Map<String , Object> toParam(@RequestParam(name="id",required=false)String id){
		List<PrimaryStu> pr_li = new ArrayList<PrimaryStu>();
		int pr_id = Integer.parseInt(id);
		Map<String , Object> map = new HashMap<String, Object>();
		Map<String , Object> result = new HashMap<String, Object>();
		map.put("pr_id", pr_id);
		pr_li = primaryStuService.StuMes(map);
		PrimaryStu primaryStu = pr_li.get(0);
		InformationConversionUtil icu = new InformationConversionUtil();
		String pr_sex = icu.getSex(primaryStu.getPr_sex());
		result.put("pr_sex",pr_sex);
		String pr_teaching = icu.getTeaching(primaryStu.getPr_teaching());
		result.put("pr_teaching",pr_teaching);
		String pr_money  = icu.getMoney(primaryStu.getPr_money());
		result.put("pr_money",pr_money);
		result.put("pr_name", primaryStu.getPr_name());
		result.put("pr_subject",primaryStu.getPr_subject());
		result.put("pr_adress", primaryStu.getPr_adress());
		result.put("pr_phone", primaryStu.getPr_phone());
		result.put("pr_identity", primaryStu.getPr_identity());
		result.put("pr_demand",primaryStu.getPr_demand());
		result.put("pr_date", primaryStu.getPr_date());
		return result;
	}
}
