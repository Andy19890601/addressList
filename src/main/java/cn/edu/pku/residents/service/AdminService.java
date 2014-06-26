package cn.edu.pku.residents.service;

import cn.edu.pku.residents.entity.Admin;

public interface AdminService {
	
	public void add(Admin admin);
	
	public void update(Admin admin);
	
	public boolean loginCheck(String username, String password);
	
}
