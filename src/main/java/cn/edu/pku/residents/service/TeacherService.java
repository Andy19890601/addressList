package cn.edu.pku.residents.service;

import java.util.List;

import cn.edu.pku.residents.entity.Teacher;

/**
 * 老师类业务逻辑接口
 * @author stanley_hwang
 *
 */
public interface TeacherService {
	
	public Teacher load(int id);
		
	public void add(Teacher teacher);

	public void delete(Teacher teacher);
	
	public void update(Teacher teacher);
	
	public boolean loginCheck(String username, String password);
	
	public void deleteById(int id);
	
	public List<Teacher> list();
	
	/**
	 * 判断用户是否已经填写完信息
	 * @param username
	 * @return
	 */
	public boolean getinformationCompleteStatus(String username);
}
