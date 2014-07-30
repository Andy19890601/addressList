package cn.edu.pku.residents.vo;

import cn.edu.pku.residents.enu.MessageType;
import cn.edu.pku.residents.enu.ReadType;

/**
 * 消息查询限制条件
 * 
 * @author stanley_hwang
 *
 */
public class MsgQueryRestrictions {
	
	private String sender;
	private ReadType readType;
	private MessageType msgType;
	private String receiver;
	
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public ReadType getReadType() {
		return readType;
	}
	public void setReadType(ReadType readType) {
		this.readType = readType;
	}
	public MessageType getMsgType() {
		return msgType;
	}
	public void setMsgType(MessageType msgType) {
		this.msgType = msgType;
	}
	
}
