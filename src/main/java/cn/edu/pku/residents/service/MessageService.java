package cn.edu.pku.residents.service;

import java.util.List;

import cn.edu.pku.residents.entity.Message;
import cn.edu.pku.residents.vo.MsgQueryRestrictions;
import cn.edu.pku.residents.vo.Page;

/**
 * 消息类服务接口
 * @author stanley_hwang
 *
 */
public interface MessageService {
	
	public void addMessage(Message message);
	
	public List<Message> listMessage(Page page, String studentID);
	
	public List<Message> listMessageByRestrictions(Page page, MsgQueryRestrictions restrictions);
	
	public void deleteMessage(int messageId);
	
	public void readMessage(int messageId);
	
	public Page paging(Page page, MsgQueryRestrictions restrictions);
	
}
