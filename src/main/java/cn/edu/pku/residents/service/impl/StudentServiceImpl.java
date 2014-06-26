package cn.edu.pku.residents.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.pku.residents.dao.StudentDao;
import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.service.StudentService;
import cn.edu.pku.residents.vo.Page;
import cn.edu.pku.residents.vo.StudentQueryRestrictions;

/**
 * 学生业务逻辑实现类
 * @author stanley_hwang
 *
 */
@Service
public class StudentServiceImpl implements StudentService{

	@Resource
	private StudentDao studentDao;
	
	@Override
	public Student load(int id) {
		return studentDao.get(id);
	}

	@Override
	public void delete(Student student) {
		studentDao.delete(student);
	}

	@Override
	public void update(Student student) {
		studentDao.update(student);
	}

	@Override
	public Page paging(StudentQueryRestrictions restrictions, Page page) {
		long count = studentDao.count(restrictions);
		System.out.println("count=" + count);
		Page p = new Page(((Long)count).intValue(), page.getIndex(), page.getSize());
		return p;
	}

	@Override
	public void add(Student s) {
		studentDao.save(s);
	}

	@Override
	public boolean loginCheck(String userId, String password) {
		return studentDao.loginCheck(userId, password);
	}

	@Override
	public void deleteById(int id) {
		Student s = studentDao.get(id);
		studentDao.delete(s);
	}

	@Override
	public List<Student> list(StudentQueryRestrictions restrictions, Page page) {
		return studentDao.list(restrictions, page);
	}

	@Override
	public int getinformationCompleteStatus(String username) {
		return studentDao.getinformationCompleteStatus(username);
	}

	@Override
	public Student getStudentByName(String username) {
		return studentDao.getStudentByName(username);
	}

	@Override
	public Student getStudentByID(String userID) {
		return studentDao.getStudentByID(userID);
	}


}
