package cn.edu.pku.residents.service;

import java.util.List;

import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.vo.Page;
import cn.edu.pku.residents.vo.StudentQueryRestrictions;

/**
 * 学生业务逻辑接口
 * @author stanley_hwang
 *
 */
public interface StudentService {
	
	public Student load(int id);
	
	public void delete(Student student);
	
	public void update(Student student);
	
	public List<Student> list(StudentQueryRestrictions restrictions, Page page);
	
	public void add(Student s);
	
	public boolean loginCheck(String username, String password);
	
	public void deleteById(int id);
		
	public Page paging(StudentQueryRestrictions restrictions, Page page);
	
	/**
	 * 判断用户是否已经填写完信息
	 * @param username
	 * @return
	 */
	public int getinformationCompleteStatus(String username);
	
	/**
	 * 根据学生姓名, 获得学生信息
	 * @param username
	 * @return
	 */
	public Student getStudentByName(String username);
	
	/**
	 * 根据学生ID, 获得学生信息
	 * @param username
	 * @return
	 */
	public Student getStudentByID(String userID);
	
	
}
