package cn.edu.pku.residents.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import cn.edu.pku.residents.entity.Admin;
import cn.edu.pku.residents.entity.Student;


/**
 * 
 * Admin Dao
 * 
 * @author stanley_hwang
 *
 */
@Repository
public class AdminDao extends AdvancedHibernateDao<Admin> {

	public boolean loginCheck(String username, String password){
		DetachedCriteria criteria = DetachedCriteria.
				forClass(Admin.class);
		criteria.add(Restrictions.eq("username",
				username));
		criteria.add(Restrictions.eq("password", 
				password));
		List<Student> list = hibernateTemplate.findByCriteria(criteria);
		if(list != null && list.size() > 0)
			return true;
		else 
			return false;
	}

}
