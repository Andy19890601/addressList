package cn.edu.pku.residents.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.util.StringUtil;
import cn.edu.pku.residents.vo.Page;
import cn.edu.pku.residents.vo.StudentQueryRestrictions;

/**
 * 
 * 学生数据访问类
 * @author stanley_hwang
 *
 */
@Repository
public class StudentDao extends AdvancedHibernateDao<Student>{
	
	/**
	 * 根据条件返回结果集
	 * @param restrictions
	 * @param page
	 * @return
	 */
	public List<Student> list(StudentQueryRestrictions restrictions, Page page){
		System.out.println(restrictions.toString());
		DetachedCriteria criteria = DetachedCriteria
				.forClass(Student.class);
		if (restrictions != null) {
			// Check restriction items.
			if (StringUtil.checkNull(restrictions.getStudentName())) {
				criteria.add(Restrictions.like("studentName",
						restrictions.getStudentName()));
			}
			if(StringUtil.checkNull(restrictions.getStudentMajor())){
				criteria.add(Restrictions.eq("studentMajor", 
						restrictions.getStudentMajor()));
			}
			if(StringUtil.checkNull(restrictions.getStudentTutor())){
				criteria.add(Restrictions.like("studentTutor", 
						restrictions.getStudentTutor()));
			}
			if(StringUtil.checkNull(restrictions.getStudentHomeTown())){
				criteria.add(Restrictions.eq("studentHomeTown", 
						restrictions.getStudentHomeTown()));
			}
			if(StringUtil.checkNull(restrictions.getStudentCompany())){
				criteria.add(Restrictions.like("studentCompany", 
						restrictions.getStudentCompany()));
			}
			if(StringUtil.checkNull(restrictions.getStudentYear())){
				criteria.add(Restrictions.eq("studentYear", 
						restrictions.getStudentYear()));
			}
			if(StringUtil.checkNull(restrictions.getStudentEnrollment())){
				criteria.add(Restrictions.eq("studentEnrollment", 
						restrictions.getStudentEnrollment()));
			}
		}
		List<Student> list = hibernateTemplate.findByCriteria(criteria, page.getIndex()
				* page.getSize(), page.getSize());
		return list;
		
	}
	
	/**
	 * 登录时候检测
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean loginCheck(String userId, String password){
		
		DetachedCriteria criteria = DetachedCriteria.forClass(Student.class);
		if(StringUtil.checkNull(userId)){
			criteria.add(Restrictions.eq("studentID", userId));
		}
		if(StringUtil.checkNull(password)){
			criteria.add(Restrictions.eq("studentPWD", password));
		}
		
		List<Student> list = hibernateTemplate.findByCriteria(criteria);
		if(list != null && list.size() > 0)
			return true;
		else 
			return false;
	
	}
	
	public int getinformationCompleteStatus(String username){
		DetachedCriteria criteria = DetachedCriteria.forClass(Student.class);
		criteria.add(Restrictions.eq("studentID", username));
		criteria.add(Restrictions.eq("informationComplete", 0));
		List<Student> list = hibernateTemplate.findByCriteria(criteria);
		if(list.size() >= 1){
		//	Student student = list.get(0);
			//修改该字段为1 表示已经完成信息修改
		//	student.setInformationComplete(1);
		//	hibernateTemplate.update(student);
			return 0;
		}else 
			return 1;
	}
	
	public Student getStudentByName(String userName){
		DetachedCriteria criteria = DetachedCriteria.forClass(Student.class);
		criteria.add(Restrictions.eq("studentName", userName));
	//	criteria.add(Restrictions.eq("informationComplete", 0));
		List<Student> list = hibernateTemplate.findByCriteria(criteria);
		return list.get(0);
	}
	
	public Student getStudentByID(String userID){
		System.out.println("userId:LLLL:" + userID);
		DetachedCriteria criteria = DetachedCriteria.forClass(Student.class);
		criteria.add(Restrictions.eq("studentID", userID));
		List<Student> list = hibernateTemplate.findByCriteria(criteria);
		return list.get(0);
	}
	
	/**
	 * 记录的个数
	 * @param restrictions
	 * @param page
	 * @return
	 */
	public long count(StudentQueryRestrictions restrictions){

		DetachedCriteria criteria = DetachedCriteria
				.forClass(Student.class);
		if (restrictions != null) {
			// Check restriction items.
			if (StringUtil.checkNull(restrictions.getStudentName())) {
				criteria.add(Restrictions.like("studentName",
						restrictions.getStudentName()));
			}
			if(StringUtil.checkNull(restrictions.getStudentMajor())){
				criteria.add(Restrictions.eq("studentMajor", 
						restrictions.getStudentMajor()));
			}
			if(StringUtil.checkNull(restrictions.getStudentTutor())){
				criteria.add(Restrictions.like("studentTutor", 
						restrictions.getStudentTutor()));
			}
			if(StringUtil.checkNull(restrictions.getStudentHomeTown())){
				criteria.add(Restrictions.eq("studentHomeTown", 
						restrictions.getStudentHomeTown()));
			}
			if(StringUtil.checkNull(restrictions.getStudentCompany())){
				criteria.add(Restrictions.like("studentCompany", 
						restrictions.getStudentCompany()));
			}
			if(StringUtil.checkNull(restrictions.getStudentEnrollment())){
				criteria.add(Restrictions.eq("studentEnrollment", 
						restrictions.getStudentEnrollment()));
			}
			if(StringUtil.checkNull(restrictions.getStudentYear())){
				criteria.add(Restrictions.eq("studentYear", 
						restrictions.getStudentYear()));
			}
		}
		return  ((Long) hibernateTemplate
				.findByCriteria(criteria.setProjection(Projections.rowCount()))
				.iterator().next()).intValue();
		
	}

}
