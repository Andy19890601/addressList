package cn.edu.pku.residents.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.entity.Teacher;
import cn.edu.pku.residents.util.StringUtil;
import cn.edu.pku.residents.vo.Page;
import cn.edu.pku.residents.vo.StudentQueryRestrictions;
import cn.edu.pku.residents.vo.TeacherQueryRestrictions;

/**
 * 老师数据访问类
 *
 * @author stanley_hwang
 *
 */
@Repository
public class TeacherDao extends AdvancedHibernateDao<Teacher>{
		
	public List<Teacher> list(TeacherQueryRestrictions restrictions, Page page){

		DetachedCriteria criteria = DetachedCriteria
				.forClass(Student.class);
		if (restrictions != null) {

			// Check restriction items.
			if (StringUtil.checkNull(restrictions.getTeacherDepartment())) {
				criteria.add(Restrictions.like("teacherDepartment",
						restrictions.getTeacherDepartment()));
			}
			
		}
		List<Teacher> list = hibernateTemplate.findByCriteria(criteria, page.getIndex()
				* page.getSize(), page.getSize());
		return list;
		
	}
	
	/**
	 * 登录时候检测
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean loginCheck(String username, String password){
		
		DetachedCriteria criteria = DetachedCriteria.forClass(Teacher.class);
		if(StringUtil.checkNull(username)){
			criteria.add(Restrictions.eq("teacherName", username));
		}
		if(StringUtil.checkNull(password)){
			criteria.add(Restrictions.eq("teacherPWD", password));
		}
		
		List<Student> list = hibernateTemplate.findByCriteria(criteria);
		if(list != null && list.size() > 0)
			return true;
		else 
			return false;
	
	}
	
}
