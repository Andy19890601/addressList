package cn.edu.pku.residents.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import cn.edu.pku.residents.enu.MessageType;
import cn.edu.pku.residents.enu.ReadType;

/**
 * 系统消息实体类
 * @author stanley_hwang
 *
 */
@Entity
@Table(name="tb_message")
public class Message {

	@Id
	@GeneratedValue
	private int id;
	private String sender;
	private String receiver;
	private String time;
	private String senderName;
	private String receiverName;
	private String content;
	private String replyMsgId;
	private ReadType readType;
	private MessageType messageType;
	
	
	public String getReplyMsgId() {
		return replyMsgId;
	}
	public void setReplyMsgId(String replyMsgId) {
		this.replyMsgId = replyMsgId;
	}
	public MessageType getMessageType() {
		return messageType;
	}
	public void setMessageType(MessageType messageType) {
		this.messageType = messageType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSenderName() {
		return senderName;
	}
	public void setSenderName(String senderName) {
		this.senderName = senderName;
	}
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public ReadType getReadType() {
		return readType;
	}
	public void setReadType(ReadType readType) {
		this.readType = readType;
	}
	
}
