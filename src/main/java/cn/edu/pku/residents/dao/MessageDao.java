package cn.edu.pku.residents.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import cn.edu.pku.residents.entity.Message;
import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.util.StringUtil;
import cn.edu.pku.residents.vo.MsgQueryRestrictions;
import cn.edu.pku.residents.vo.Page;
import cn.edu.pku.residents.vo.StudentQueryRestrictions;

@Repository
public class MessageDao extends AdvancedHibernateDao<Message>{
	
	public List<Message> listMessage(Page page, String studentID){
		DetachedCriteria criteria = DetachedCriteria.forClass(Message.class);
		if(StringUtil.checkNull(studentID)){
			criteria.add(Restrictions.eq("receiver", studentID));
		}
		criteria.addOrder(Order.desc("id"));
		List<Message> list = hibernateTemplate.findByCriteria(criteria, page.getIndex()
				* page.getSize(), page.getSize());
		return list;
	}
	
	public List<Message> listMessageByRestrictions(Page page, MsgQueryRestrictions restrictions){
		if(restrictions != null){
			DetachedCriteria criteria = DetachedCriteria.forClass(Message.class);
			if(StringUtil.checkNull(restrictions.getSender())){
				criteria.add(Restrictions.eq("sender", restrictions.getSender()));
			}
			if(restrictions.getMsgType() != null){
				criteria.add(Restrictions.eq("msgType", restrictions.getMsgType()));
			}
			if(restrictions.getReadType() != null){
				criteria.add(Restrictions.eq("readType", restrictions.getReadType()));
			}
			if(StringUtil.checkNull(restrictions.getReceiver())){
				criteria.add(Restrictions.eq("receiver", restrictions.getReceiver()));
			}
			criteria.addOrder(Order.desc("id"));
			List<Message> list = hibernateTemplate.findByCriteria(criteria, page.getIndex() * page.getSize(),
					page.getSize());
			return list;
		}
		return null;
	}
	
	/**
	 * 记录的个数
	 * @param restrictions
	 * @param page
	 * @return
	 */
	public long count(MsgQueryRestrictions restrictions){

		if(restrictions != null){
			DetachedCriteria criteria = DetachedCriteria.forClass(Message.class);
			if(StringUtil.checkNull(restrictions.getSender())){
				criteria.add(Restrictions.eq("sender", restrictions.getSender()));
			}
			if(restrictions.getMsgType() != null){
				criteria.add(Restrictions.eq("msgType", restrictions.getMsgType()));
			}
			if(restrictions.getReadType() != null){
				criteria.add(Restrictions.eq("readType", restrictions.getReadType()));
			}
			if(StringUtil.checkNull(restrictions.getReceiver())){
				criteria.add(Restrictions.eq("receiver", restrictions.getReceiver()));
			}
			return  ((Long) hibernateTemplate
					.findByCriteria(criteria.setProjection(Projections.rowCount()))
					.iterator().next()).intValue();
		}
		return 0;
	
	}
	
	
}
