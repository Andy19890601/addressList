package cn.edu.pku.residents.controller;


import javax.annotation.Resource;

import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.pku.residents.service.AdminService;
import cn.edu.pku.residents.util.StringUtil;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Resource
	private AdminService adminService;
	
	@RequestMapping(value="/login")
	public String loginPage(){
		return "";
	}
	
	@RequestMapping(value="/loginCheck")
	public String login(String username, String password){
		
		if(StringUtil.checkNull(username) && StringUtil.checkNull(password)){
			if(adminService.loginCheck(username, password)){
				return "";
			}else{
				return "";
			}
		}
		return null;
	}
	
}
