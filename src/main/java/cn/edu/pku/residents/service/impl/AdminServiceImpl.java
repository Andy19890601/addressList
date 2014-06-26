package cn.edu.pku.residents.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.pku.residents.dao.AdminDao;
import cn.edu.pku.residents.entity.Admin;
import cn.edu.pku.residents.service.AdminService;

/**
 * 
 * Implements of Admin Service
 * @author stanley_hwang
 *
 */
@Service
public class AdminServiceImpl implements AdminService{
	
	/** admin Dao */
	@Resource
	private AdminDao adminDao;
	
	@Override
	public void add(Admin admin) {
		adminDao.save(admin);
	}

	@Override
	public void update(Admin admin) {
		adminDao.update(admin);
	}

	@Override
	public boolean loginCheck(String username, String password) {
		return adminDao.loginCheck(username, password);
	}

}
