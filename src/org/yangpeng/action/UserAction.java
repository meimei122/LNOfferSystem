package org.yangpeng.action;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.yangpeng.entity.Admin;
import org.yangpeng.entity.SendEmail;
import org.yangpeng.entity.User;
import org.yangpeng.service.AdminService;
import org.yangpeng.service.PageDataService;
import org.yangpeng.service.UserService;
import org.yangpeng.util.EmailMesUtil;
import org.yangpeng.util.MD5Util;
import org.yangpeng.util.NameUtil;
import org.yangpeng.util.PinYinUtil;
import org.yangpeng.util.SendMessageUtil;
import org.yangpeng.util.StringEmtyUtil;

@Controller
@RequestMapping("/userDo")
public class UserAction {
	private final Logger logger = Logger.getLogger(UserAction.class);
	public MD5Util md5Util = new MD5Util() ;
	public PinYinUtil pyUtil = new PinYinUtil();
	public NameUtil nameUtil = new NameUtil();
	public SendMessageUtil smu = new SendMessageUtil();
	public SendEmail se = new SendEmail();
	public StringEmtyUtil seu = new StringEmtyUtil();
	@Resource 
	public UserService userService;
	@Resource
	public AdminService adminService;
	@Resource
	public PageDataService pageDataService;
	
	
	@RequestMapping("/insert")
	public void insertUser(User user,PrintWriter out) throws BadHanyuPinyinOutputFormatCombination{
		//Map<String, String> result = new HashMap<String,String>();
		logger.debug("开始处理用户信息");
		String adminPasw = user.getAdminPasw();
		String md5Pasw   = new MD5Util().getMD5Code(adminPasw);
		logger.debug("用户登录面处理");
		user.setAdminPasw(md5Pasw);
		Map<String, Object> param = new User().getUserMap(user);
		
		logger.debug("开始增加用户信息");
		//增加用户信息
		int i = userService.insertStu(param);
		if(i>0){
			logger.debug("用户信息添加成功,开始注册登录信息");
			String userName  = user.getUserName();
			String adminName = pyUtil.getEname(userName);
			if(adminNameSelect(adminName)){
				Map<String, Object> adminMap = new HashMap<String, Object>();
				adminMap.put("adminName", adminName);
				adminMap.put("adminPasw", md5Pasw);
				String createDate = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
				adminMap.put("createDate", createDate);
				int a = adminService.insertAdmin(adminMap);
				System.out.println(adminMap.get("adminId"));
				if(a>0){
					logger.debug("admin信息添加成功");
					/*logger.debug("开始发送邮件");
					int emailCode = 1001;
					Map<String, Object> emailMap = new HashMap<String, Object>();
					emailMap.put("emailCode",emailCode );
					SendEmail se = pageDataService.selectEmailMessage(emailMap);
					emailMap.put("adminName", adminName);
					emailMap.put("date",createDate);
					emailMap.put("userName", user.getUserName());
					emailMap.put("phone", user.getUserPhone());
					emailMap.put("email", user.getUserEmail());
					emailMap.put("emailMessag",se.getEmailMessage());
					String emailMessage = new EmailMesUtil().getMes(emailMap);
					String emailSubject = "家教中心用户注册提示";
					boolean Eresult = smu.sendEmai(user.getUserEmail(), emailSubject, emailMessage);
					if(Eresult){
						logger.debug("邮件发送成功");
					}else{
						logger.debug("邮件发送失败");
					}*/
					//需要添加到数据库adminName userName createDate emailCode = 1001 写到SendEmail类的getMessage方法中
					//这里userEmail emailSubject emailMessage 发送到userEmail 
					out.print("ok");
				}else{
					logger.debug("admin信息添加失败");
					out.print("a_erro");
				}
			}else{
				adminName = nameUtil.getRandomName();
				Map<String, Object> adminMap = new HashMap<String, Object>();
				adminMap.put("adminName", adminName);
				adminMap.put("adminPasw", md5Pasw);
				String createDate = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
				adminMap.put("createDate", createDate);
				int a = adminService.insertAdmin(adminMap);
				System.out.println(adminMap.get("adminId"));
				if(a>0){
					logger.debug("admin信息添加成功");
					/*logger.debug("开始发送邮件");
					int emailCode = 1002;
					Map<String, Object> emailMap = new HashMap<String, Object>();
					emailMap.put("emailCode",emailCode );
					SendEmail se = pageDataService.selectEmailMessage(emailMap);
					emailMap.put("adminName", adminName);
					emailMap.put("date",createDate);
					emailMap.put("userName", user.getUserName());
					emailMap.put("phone", user.getUserPhone());
					emailMap.put("email", user.getUserEmail());
					emailMap.put("emailMessag",se.getEmailMessage() );
					String emailMessage = new EmailMesUtil().getMes(emailMap);
					System.out.println(emailMessage);
					String emailSubject = "家教中心用户注册提示";
					System.out.println(user.getUserEmail());
					boolean Eresult = smu.sendEmai(user.getUserEmail(), emailSubject, emailMessage);
					if(Eresult){
						logger.debug("邮件发送成功");
					}else{
						logger.debug("邮件发送失败");
					}*/
					//需要添加到数据库adminName userName createDate emailCode  = 1002  emailMessage写到SendEmail类的getMessage方法中
					//这里 emailMessage 发送到userEmail 
					out.print("ok");
				}else{
					logger.debug("admin信息添加失败");
					out.print("a_erro");
				}
			}
		}else{
			logger.debug("user信息添加失败");
			out.print("u_erro");
			//result.put("resultMes", "u_erro");
			//return result;
		}
		
	}
	@RequestMapping("/administrate")
	public String administrateShow(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("adminId");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminId", Integer.parseInt(adminId));
		Map<String, Object> param = userService.selectUserMes(map);
		model.addAttribute("userMes", param);
		return "supervise/administrate";
	}
	
	@RequestMapping("/nu")
	public String nameupdateShow(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("adminId");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminId", Integer.parseInt(adminId));
		Map<String, Object> param = adminService.selectAdminName(map);
		model.addAttribute("adminName", param);
		return "supervise/nameupdate";
	}
	/**
	 * 更改用户名
	 * @param newName
	 * @param oldName
	 * @return
	 */
	@RequestMapping("/upName")
	public String updateName(HttpServletRequest request,@RequestParam(name="username")String newName,
			@RequestParam(name="adminName")String oldName){
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("adminId");
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("adminId", Integer.parseInt(adminId));
		Map<String,String> param = new HashMap<String, String>();
		param.put("oldname", oldName);
		param.put("adminname", newName);
		if(adminService.upAdminName(param)){
			System.out.println("更改成功");
			/*logger.debug("开始发送邮件");
			User user = userService.adminMesSelect(map);
			int emailCode = 2002;
			Map<String, Object> emailMap = new HashMap<String, Object>();
			emailMap.put("emailCode",emailCode );
			SendEmail se = pageDataService.selectEmailMessage(emailMap);
			String createDate = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
			emailMap.put("emailMessag",se.getEmailMessage() );
			emailMap.put("date",createDate);
			emailMap.put("userName", user.getUserName());
			emailMap.put("adminName", newName);
			String emailMessage = new EmailMesUtil().getMes(emailMap);
			String emailSubject = "家教中心用户注册提示";
			boolean Eresult = smu.sendEmai(user.getUserEmail(), emailSubject, emailMessage);
			if(Eresult){
				logger.debug("邮件发送成功");
			}else{
				logger.debug("邮件发送失败");
			}*/
			return "supervise/upname";
		}else{
				//更改失败
			System.out.println("更改失败");
			return null;
		}
	}
	public boolean adminNameSelect(String adminName){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminName",adminName);
		List<Admin> admin = userService.adminNameSelect(map);
		if(admin.size()==0){//没有这个adminName
			return true;
		}else{
			return false;
		}
	}
	/**
	 * 查询要改的用户名是否重复
	 * @param adminName
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/selName")
	public Map<String, Object> adminSelect(@RequestParam(name="username")String adminName){
		Map<String, Object> map = new HashMap<String, Object>();
		Map<String, Object> param = new HashMap<String, Object>();
		map.put("adminName",adminName);
		List<Admin> admin = userService.adminNameSelect(map);
		if(admin.size()==0){//没有这个adminName
			param.put("valid",true);
			return param;
		}else{
			param.put("valid",false);
			return param;
		}
	}
	
	@RequestMapping("/pu")
	public String paswupdateShow(){
		return "supervise/paswupdate";
	}
	/**
	 * 更改用户登录密码
	 * @param request
	 * @param password
	 * @return
	 */
	@RequestMapping("/uppasw")
	public String paswupdate(HttpServletRequest request,@RequestParam(name="password")String password){
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("adminId");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminId", Integer.parseInt(adminId));
		User user = userService.adminMesSelect(map);
		map.put("adminPasw", md5Util.getMD5Code(password));
		boolean result = adminService.upAdminPasw(map);
		if(result){
			logger.debug("更改密码成功");
			/*logger.debug("开始发送邮件");
			int emailCode = 2001;
			Map<String, Object> emailMap = new HashMap<String, Object>();
			emailMap.put("emailCode",emailCode );
			SendEmail se = pageDataService.selectEmailMessage(emailMap);
			String createDate = (new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime()));
			emailMap.put("emailMessag",se.getEmailMessage() );
			emailMap.put("date",createDate);
			emailMap.put("userName", user.getUserName());
			String emailMessage = new EmailMesUtil().getMes(emailMap);
			String emailSubject = "家教中心用户注册提示";
			boolean Eresult = smu.sendEmai(user.getUserEmail(), emailSubject, emailMessage);
			if(Eresult){
				logger.debug("邮件发送成功");
			}else{
				logger.debug("邮件发送失败");
			}*/
			return "supervise/uppasw";
		}else{
			logger.debug("更改密码失败");
		}
		return null;
	}
	/**
	 * 查询用户密码是否正确
	 * @param request
	 * @param oldpasw
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/selpasw")
	public Map<String, Object> paswSelect(HttpServletRequest request,@RequestParam(name="oldpasw")String oldpasw){
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("adminId");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminId", Integer.parseInt(adminId));
		Map<String, Object> result = adminService.selectAdminName(map);
		String pasw = (String) result.get("adminPasw");
		String newPasw = md5Util.getMD5Code(oldpasw);
		Map<String, Object> param = new HashMap<String, Object>();
		if(pasw.equals(newPasw)){
			param.put("valid",true);
		}else{
			param.put("valid",false);
		}
		return param;
	}

	/**
	 * 用户信息更改
	 * @return
	 */
	@RequestMapping("/au")
	public String adminupdateShow(HttpServletRequest request,Model model){
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("adminId");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("adminId", Integer.parseInt(adminId));
		User user = userService.adminMesSelect(map);
		System.out.println(user);
		model.addAttribute("consumer", user);
		return "supervise/adminupdate";
	}
	
	@RequestMapping("/upUser")
	public String upUserMessage(HttpServletRequest request,User user){
		HttpSession session = request.getSession();
		String adminId = (String) session.getAttribute("adminId");
		Map<String, Object> map = new HashMap<String, Object>();
		//Map<String, Object> emailMap = new HashMap<String, Object>();
		map.put("adminId", Integer.parseInt(adminId));
		if(!seu.StringEmty(user.getUserPhone())){
			map.put("userPhone", user.getUserPhone());
			//emailMap.put("userPhone", user.getUserPhone());
		}
		if(!seu.StringEmty(user.getUserEmail())){
			map.put("userEmail", user.getUserEmail());
			//emailMap.put("userEmail", user.getUserEmail());
		}
		if(!seu.StringEmty(user.getUserAdress())){
			map.put("userAdress", user.getUserAdress());
			//emailMap.put("userAdress", user.getUserAdress());
		}
		if(!seu.StringEmty(user.getUserMotto())){
			map.put("userMotto", user.getUserMotto());
			//emailMap.put("userMotto", user.getUserMotto());
		}
		System.out.println(map);
		if(userService.upUserMessage(map)){
			logger.debug("更改成功");
			return "";
		}else{
			return null;
		}
	}
	
	@RequestMapping("/at")
	public String adminiteacherShow(){
		return "supervise/adminteacher";
	}
}
