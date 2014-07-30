package cn.edu.pku.residents.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.pku.residents.entity.Message;
import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.enu.MessageType;
import cn.edu.pku.residents.enu.ReadType;
import cn.edu.pku.residents.service.MessageService;
import cn.edu.pku.residents.service.StudentService;
import cn.edu.pku.residents.util.StudentSession;
import cn.edu.pku.residents.vo.MsgQueryRestrictions;
import cn.edu.pku.residents.vo.Page;

@Controller
@RequestMapping(value="/")
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	@Autowired
	private StudentService studentService;
	
	/**
	 * list Messages
	 * @param page
	 * @param session
	 * @return
	 */
	@RequestMapping(value="msgCenter")
	public String msgCenter(){
		return "redirect:/listUnReadMsg";
	}
	
	//@RequestMapping(value="msgCenter")
	public String listMessage(Page page, HttpSession session, HttpServletRequest req){
		StudentSession studentSession = (StudentSession) session.getAttribute("studentSession");
		MsgQueryRestrictions restrictions = new MsgQueryRestrictions();
		restrictions.setReceiver(studentSession.getStudentID());
		List<Message> list = messageService.listMessageByRestrictions(page, restrictions);
		Page p = messageService.paging(page, restrictions);
		req.setAttribute("msgList", list);
		req.setAttribute("pageUtil", p);
		return "listUnReadMsg";
	}
	
	/**
	 * List un read messages.
	 * @param page
	 * @param session
	 * @param req
	 * @return
	 */
	@RequestMapping(value="listUnReadMsg")
	public String listUnReadMessage(Page page, HttpSession session, HttpServletRequest req){
		MsgQueryRestrictions restrictions = new MsgQueryRestrictions();
		StudentSession studentSession = (StudentSession) session.getAttribute("studentSession");
		restrictions.setReadType(ReadType.unread);
		restrictions.setReceiver(studentSession.getStudentID());
		List<Message> list = messageService.listMessageByRestrictions(page, restrictions);
		Page p = messageService.paging(page, restrictions);
		req.setAttribute("msgList", list);
		req.setAttribute("pageUtil", p);
		return "newsCenter";
	}
	
	/**
	 * List read messages.
	 * @param page
	 * @param session
	 * @param req
	 * @return
	 */
	@RequestMapping(value="listSendedMsg")
	public String listSendMessage(Page page, HttpSession session, HttpServletRequest req){
		MsgQueryRestrictions restrictions = new MsgQueryRestrictions();
		StudentSession studentSession = (StudentSession) session.getAttribute("studentSession");
	//	restrictions.setReadType(ReadType.read);
	//	restrictions.setReceiver(studentSession.getStudentID());
		restrictions.setSender(studentSession.getStudentID());
		List<Message> list = messageService.listMessageByRestrictions(page, restrictions);
		Page p = messageService.paging(page, restrictions);
		req.setAttribute("msgList", list);
		req.setAttribute("pageUtil", p);
		return "sendedNews";
	}
	
	/**
	 * List send messages.
	 * @param page
	 * @param session
	 * @param req
	 * @return
	 */
	@RequestMapping(value="listReadMsg")
	public String listReadMessage(Page page, HttpSession session, HttpServletRequest req){
		MsgQueryRestrictions restrictions = new MsgQueryRestrictions();
		StudentSession studentSession = (StudentSession) session.getAttribute("studentSession");
		restrictions.setReadType(ReadType.read);
		restrictions.setReceiver(studentSession.getStudentID());
		List<Message> list = messageService.listMessageByRestrictions(page, restrictions);
		Page p = messageService.paging(page, restrictions);
		req.setAttribute("msgList", list);
		req.setAttribute("pageUtil", p);
		return "readedNews";
	}
	
	
	/**
	 * Send Message!
	 * @return
	 */
	@RequestMapping(value="sendMsg")
	public String sendMessage(String receiverId, String content, HttpSession session){
		StudentSession studentSession = (StudentSession) session.getAttribute("studentSession");
		Student receiver = studentService.getStudentByID(receiverId);
		Student sender = studentService.getStudentByID(studentSession.getStudentID());
		Message msg = new Message();
		msg.setContent(content);
		msg.setSender(studentSession.getStudentID());
		msg.setReceiver(receiverId);
		msg.setSenderName(sender.getStudentName());
		msg.setReceiverName(receiver.getStudentName());
		msg.setTime(new Date().toString());
		msg.setMessageType(MessageType.send);
		messageService.addMessage(msg);
		return "";
	}
	
	
	@RequestMapping(value="replyMsg")
	@ResponseBody
	public Object replyMessage(@RequestParam(value="studentID")String receiverId, 
			@RequestParam(value="sendContent")String replyContent, 
			@RequestParam(value="newsID")String replyMsgId, HttpSession session){
		StudentSession studentSession = (StudentSession) session.getAttribute("studentSession");
		Student receiver = studentService.getStudentByID(receiverId);
		Student sender = studentService.getStudentByID(studentSession.getStudentID());
		Message msg = new Message();
		msg.setContent(replyContent);
		msg.setMessageType(MessageType.reply);
		msg.setReplyMsgId(replyMsgId);
		msg.setSender(studentSession.getStudentID());
		msg.setReceiver(receiverId);
		msg.setSenderName(sender.getStudentName());
		msg.setReadType(ReadType.unread);
		msg.setReceiverName(receiver.getStudentName());
		msg.setTime(new Date().toString());
		messageService.addMessage(msg);
		Map<String, Object> result = new HashMap<String, Object>();
		result.put("status", "回复成功！");
		return result;
	}
	
	/**
	 * Delete Message
	 * @param messageId
	 * @return
	 */
	@RequestMapping(value="deleteMsg")
	@ResponseBody
	public Object deleteMessage(@RequestParam(value="newsID")String messageId){
		messageService.deleteMessage(Integer.valueOf(messageId));
		return "redirect:/msgCenter";
	}
	
	/**
	 * Mark Message as read status.
	 * @param messageId
	 * @return
	 */
	@RequestMapping(value="markMsg")
	@ResponseBody
	public Object markMessage(@RequestParam(value="newsID")String messageId){
		messageService.readMessage(Integer.valueOf(messageId));
		return "redirect:/msgCenter";
	}
	
}
