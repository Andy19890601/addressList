package cn.edu.pku.residents.util;

import java.util.List;

import cn.edu.pku.residents.entity.Student;

/**
 * 字符串工具类
 * @author stanley_hwang
 *
 */
public class StringUtil {
	
	/**
	 * 检查字符串是否为null、空白字符或空字符
	 * 
	 * @param src
	 *            输入字符串
	 * @return 是否为null、空白字符或空字符
	 */
	public static boolean checkNull(String src) {
		return src != null && src.trim().length() > 0;
	}
	
	public static void clearNullForEntity(Student s){
			if(!checkNull(s.getStudentCall())){
				s.setStudentCall("未填");
			}
			if(!checkNull(s.getStudentCompany())){
				s.setStudentCompany("未填");
			}
			if(!checkNull(s.getStudentDescription())){
				s.setStudentDescription("未填");
			}
			if(!checkNull(s.getStudentEmail())){
				s.setStudentEmail("未填");
			}
			if(!checkNull(s.getStudentEnrollment())){
				s.setStudentEnrollment("未填");
			}
			if(!checkNull(s.getStudentGoodAt())){
				s.setStudentGoodAt("未填");
			}
			if(!checkNull(s.getStudentHomeTown())){
				s.setStudentHomeTown("未填");
			}
			if(!checkNull(s.getStudentIndustryTag())){
				s.setStudentIndustryTag("未填");
			}
			if(!checkNull(s.getStudentLicense())){
				s.setStudentLicense("未填");
			}
			if(!checkNull(s.getStudentMajor())){
				s.setStudentMajor("未填");
			}
			if(!checkNull(s.getStudentName())){
				s.setStudentName("未填");
			}
			if(!checkNull(s.getStudentPicturePath())){
				s.setStudentPicturePath("/static/img/default/default.jpeg");
			}
			if(!checkNull(s.getStudentPost())){
				s.setStudentPost("未填");
			}
			if(!checkNull(s.getStudentPresentAddress())){
				s.setStudentPresentAddress("未填");
			}
			if(!checkNull(s.getStudentPWD())){
				s.setStudentPWD("未填");
			}
			if(!checkNull(s.getStudentQQ())){
				s.setStudentQQ("未填");
			}
			if(!checkNull(s.getStudentSex())){
				s.setStudentSex("未填");
			}
			if(!checkNull(s.getStudentTutor())){
				s.setStudentTutor("未填");
			}
			if(!checkNull(s.getStudentWeChat())){
				s.setStudentWeChat("未填");
			}
			if(!checkNull(s.getStudentWeiBo())){
				s.setStudentWeiBo("未填");
			}
			if(!checkNull(s.getStudentYear())){
				s.setStudentYear("未填");
			}
	}
	
	public static void clearNull(List<Student> students){
		for(int i = 0; i < students.size(); i++){
			Student s = students.get(i);
			if(!checkNull(s.getStudentCall())){
				s.setStudentCall("未填");
			}
			if(!checkNull(s.getStudentCompany())){
				s.setStudentCompany("未填");
			}
			if(!checkNull(s.getStudentDescription())){
				s.setStudentDescription("未填");
			}
			if(!checkNull(s.getStudentEmail())){
				s.setStudentEmail("未填");
			}
			if(!checkNull(s.getStudentEnrollment())){
				s.setStudentEnrollment("未填");
			}
			if(!checkNull(s.getStudentGoodAt())){
				s.setStudentGoodAt("未填");
			}
			if(!checkNull(s.getStudentHomeTown())){
				s.setStudentHomeTown("未填");
			}
			if(!checkNull(s.getStudentIndustryTag())){
				s.setStudentIndustryTag("未填");
			}
			if(!checkNull(s.getStudentLicense())){
				s.setStudentLicense("未填");
			}
			if(!checkNull(s.getStudentMajor())){
				s.setStudentMajor("未填");
			}
			if(!checkNull(s.getStudentName())){
				s.setStudentName("未填");
			}
			if(!checkNull(s.getStudentPicturePath())){
				s.setStudentPicturePath("/static/img/default/default.jpeg");
			}
			if(!checkNull(s.getStudentPost())){
				s.setStudentPost("未填");
			}
			if(!checkNull(s.getStudentPresentAddress())){
				s.setStudentPresentAddress("未填");
			}
			if(!checkNull(s.getStudentPWD())){
				s.setStudentPWD("未填");
			}
			if(!checkNull(s.getStudentQQ())){
				s.setStudentQQ("未填");
			}
			if(!checkNull(s.getStudentSex())){
				s.setStudentSex("未填");
			}
			if(!checkNull(s.getStudentTutor())){
				s.setStudentTutor("未填");
			}
			if(!checkNull(s.getStudentWeChat())){
				s.setStudentWeChat("未填");
			}
			if(!checkNull(s.getStudentWeiBo())){
				s.setStudentWeiBo("未填");
			}
			if(!checkNull(s.getStudentYear())){
				s.setStudentYear("未填");
			}
		}
	}
	
}
