package org.yangpeng.action;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.yangpeng.entity.Admin;
import org.yangpeng.entity.User;
import org.yangpeng.service.AdminService;
import org.yangpeng.util.MD5Util;

@Controller
@RequestMapping("/admin")
public class AdminAction {
	public MD5Util md5Util = new MD5Util() ;
	@Resource
	public AdminService adminService;
	@RequestMapping("/to")
	public void loginAdmin(Admin admin,PrintWriter out,Model model,HttpServletRequest request){
		HttpSession session = request.getSession();
		Map<String,String> map = new HashMap<String,String>();
		map.put("adminName", admin.getAdminName());
		List<Admin> list_admin = adminService.loginAdmin(map);
		if(list_admin.size() == 0){
			out.print("name_error");
		}else{
			Admin  admin_pasw = list_admin.get(0);
			if(md5Util.getMD5Code(admin.getAdminPasw()).equals(admin_pasw.getAdminPasw())){
				Admin ad = adminService.selectAdminId(map);
				map.put("adminId", ad.getAdminId().toString());
				User user = adminService.selectUserName(map);
				session.setAttribute("adminId", ad.getAdminId().toString());
				session.setAttribute("userName", user.getUserName());
				session.setAttribute("userTypeId", user.getUserTypeId());
				out.print("login_suc");
			}else{
				model.addAttribute("adminName", admin.getAdminName());
				model.addAttribute("adminPasw", admin.getAdminPasw());
				out.print("login_error");
			}
		}
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
}
