package cn.edu.pku.residents.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.pku.residents.dao.TeacherDao;
import cn.edu.pku.residents.entity.Teacher;
import cn.edu.pku.residents.service.TeacherService;

/**
 * 
 * 老师业务逻辑实现类
 * @author stanley_hwang
 *
 */
@Service
public class TeacherServiceImpl implements TeacherService{
	
	@Resource
	private TeacherDao teacherDao;
	
	@Override
	public Teacher load(int id) {
		return teacherDao.get(id);
	}

	@Override
	public void add(Teacher teacher) {
		teacherDao.save(teacher);
	}

	@Override
	public void delete(Teacher teacher) {
		teacherDao.delete(teacher);
	}

	@Override
	public void update(Teacher teacher) {
		teacherDao.update(teacher);
	}

	@Override
	public List<Teacher> list() {
		return teacherDao.list();
	}

	@Override
	public boolean loginCheck(String username, String password) {
		return teacherDao.loginCheck(username, password);
	}

	@Override
	public void deleteById(int id) {
		Teacher t = teacherDao.get(id);
		teacherDao.delete(t);
	}

	@Override
	public boolean getinformationCompleteStatus(String username) {
		// TODO Auto-generated method stub
		return false;
	}

}
