package cn.edu.pku.residents.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.pku.residents.dao.MessageDao;
import cn.edu.pku.residents.entity.Message;
import cn.edu.pku.residents.enu.ReadType;
import cn.edu.pku.residents.service.MessageService;
import cn.edu.pku.residents.vo.MsgQueryRestrictions;
import cn.edu.pku.residents.vo.Page;
import cn.edu.pku.residents.vo.StudentQueryRestrictions;

/**
 * Implementations of Message service
 * @author stanley_hwang
 *
 */
@Service
public class MessageServiceImpl implements MessageService{

	@Autowired
	private MessageDao messageDao;
	
	@Override
	public void addMessage(Message message) {
		messageDao.save(message);
	}

	@Override
	public List<Message> listMessage(Page page, String studentID) {
		return messageDao.listMessage(page, studentID);
	}

	@Override
	public void deleteMessage(int messageId) {
		messageDao.delete(messageId);
	}

	@Override
	public void readMessage(int messageId) {
		Message message = messageDao.get(messageId);
		message.setReadType(ReadType.read);
		messageDao.update(message);
	}
	
	@Override
	public Page paging(Page page, MsgQueryRestrictions restrictions) {
		long count = messageDao.count(restrictions);
		Page p = new Page(((Long)count).intValue(), page.getIndex(), page.getSize());
		return p;
	}

	@Override
	public List<Message> listMessageByRestrictions(Page page,
			MsgQueryRestrictions restrictions) {
		return messageDao.listMessageByRestrictions(page, restrictions);
	}


}
