package cn.edu.pku.residents.service;

import java.util.List;

import cn.edu.pku.residents.entity.Notice;

/**
 * 通知类业务逻辑接口
 * @author stanley_hwang
 *
 */
public interface NoticeService {
	
	public void add(Notice notice);

	public void update(Notice notice);
	
	public void delete(Notice notice);
	
	public List<Notice> list();
	
	public Notice load(int id);
	
}
