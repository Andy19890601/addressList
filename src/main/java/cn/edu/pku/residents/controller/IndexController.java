package cn.edu.pku.residents.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.edu.pku.residents.service.StudentService;
import cn.edu.pku.residents.service.TeacherService;
import cn.edu.pku.residents.util.StringUtil;
import cn.edu.pku.residents.util.StudentSession;

@Controller
public class IndexController {

	@Resource
	private StudentService studentService;
	
	@Resource
	private TeacherService teacherService;

	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home(){
		return "redirect:/login";
	}

	@RequestMapping(value="/index", method = RequestMethod.GET)
	public String index(){
		return "homepage";
	}
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String homePage(){
		return "homepage";
	}

	@RequestMapping(value="/uploadImg", method = RequestMethod.GET)
	public String uploadImg(){
		return "uploadingImage";
	}

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(){
		return "login";
	}

	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	@RequestMapping(value="doLogin")
	public String login(String userID, String password, String radio_userType, HttpSession session){
		System.out.println(userID + ":" + password + ":" + radio_userType);
		if(StringUtil.checkNull(userID) && StringUtil.checkNull(password)){
			//如果是学生
			if("1".equals(radio_userType.trim())){
				if(studentService.loginCheck(userID, password)){
					if(studentService.getinformationCompleteStatus(userID) == 0){
						//设置session
						StudentSession studentSession = new StudentSession(userID);
						session.setAttribute("studentSession", studentSession);
						return "redirect:stuInformation";
					}else{						
						StudentSession studentSession = new StudentSession(userID);
						session.setAttribute("studentSession", studentSession);
						return "redirect:index";
					}
				}
				else 
					return "redirect:login";
			//如果是老师
			}else{
				if(teacherService.loginCheck(userID, password)){
					return "";
				}else{
					return "";
				}
			}
		}else{
			return "login";
		}
		
	}

}
