package cn.edu.pku.residents.interceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.service.StudentService;
import cn.edu.pku.residents.util.StudentSession;

public class StudentInfoInterceptor extends HandlerInterceptorAdapter{
	
	@Resource
	private StudentService studentService;
	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * org.springframework.web.servlet.handler.HandlerInterceptorAdapter#preHandle
	 * (javax.servlet.http.HttpServletRequest,
	 * javax.servlet.http.HttpServletResponse, java.lang.Object)
	 */
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, 
			Object handler) throws Exception{
		StudentSession studentSession = (StudentSession) req.getSession().getAttribute("studentSession");		
		if(studentSession == null){
			req.getRequestDispatcher("/login").forward(req, resp);
			return false;
		}else {
			Student s = studentService.getStudentByID(studentSession.getStudentID());
			req.setAttribute("stuInfo", s);
			return super.preHandle(req, resp, handler);
		}
	}

}
