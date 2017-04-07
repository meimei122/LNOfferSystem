package org.yangpeng.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/indexAction")
public class IndexAction {
	@RequestMapping("/index")
    public String  indexShow(){
        return "index";
    }
/*	@RequestMapping("/typography")
	public String  typographyShow(){
		return "typography";
	}*/
	
	@RequestMapping("/contact")
	public String  contactShow(){
		return "contact";
	}
	@RequestMapping("/manage")
	public String  manageShow(){
		return "manage";
	}
	@RequestMapping("/register")
	public String registerShow(){
		return "register";
	}
	
	/**
	 * 初中
	 * @return
	 */
	@RequestMapping("/pr")
	public String administudent_pr_Show(){
		return "supervise/administudent_pr";
	}
	/**
	 * 高中文科
	 * @return
	 */
	@RequestMapping("/ar")
	public String administudent_ar_Show(){
		return "supervise/administudent_ar";
	}

	@RequestMapping("/nu")
	public String nameupdateShow(){
		return "supervise/nameupdate";
	}
	@RequestMapping("/jump")
	public String jumpShow(){
		return "jump";
	}
	@RequestMapping("/about")
	public String aboutShow(){
		return "about";
	}
	
	@RequestMapping("/timeOut")
	public String timeOut(){
		return "timeout";
	}
	@RequestMapping("/mens_suc")
	public String mens_suc(){
		return "mens_suc";
	}
}
