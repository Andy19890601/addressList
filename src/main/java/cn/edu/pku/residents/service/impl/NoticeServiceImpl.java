package cn.edu.pku.residents.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.edu.pku.residents.dao.NoticeDao;
import cn.edu.pku.residents.entity.Notice;
import cn.edu.pku.residents.service.NoticeService;

/**
 * 通告业务逻辑实现接口
 * @author stanley_hwang
 *
 */
@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Resource
	private NoticeDao noticeDao;
	
	@Override
	public void add(Notice notice) {
		noticeDao.save(notice);
	}

	@Override
	public void update(Notice notice) {
		noticeDao.update(notice);
	}

	@Override
	public void delete(Notice notice) {
		noticeDao.delete(notice);
	}

	@Override
	public List<Notice> list() {
		return noticeDao.list();
	}

	@Override
	public Notice load(int id) {
		return noticeDao.get(id);
	}

}
