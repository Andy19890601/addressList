package cn.edu.pku.residents.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.pku.residents.util.StudentSession;

public class StudentSearchInterceptor extends HandlerInterceptorAdapter{

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
			return super.preHandle(req, resp, handler);
		}
	}

}
