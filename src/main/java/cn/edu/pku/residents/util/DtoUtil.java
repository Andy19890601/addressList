package cn.edu.pku.residents.util;

import cn.edu.pku.residents.dto.StudentDto;
import cn.edu.pku.residents.dto.TeacherDto;
import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.entity.Teacher;

public class DtoUtil {

	public static Student newStudent(StudentDto dto){
		Student s = new Student();
		s.setStudentID(dto.getStudentID());
		s.setStudentPWD(dto.getStudentPWD());
		s.setStudentName(dto.getStudentName());
		s.setStudentSex(dto.getStudentSex());
		s.setStudentPicturePath(dto.getStudentPicturePath());
		s.setStudentEnrollment(dto.getStudentEnrollment());
		s.setStudentMajor(dto.getStudentMajor());
		s.setStudentTutor(dto.getStudentTutor());
		s.setStudentGoodAt(dto.getStudentGoodAt());
		s.setStudentEmail(dto.getStudentEmail());
		s.setStudentCall(dto.getStudentCall());
		s.setStudentQQ(dto.getStudentQQ());
		s.setStudentWeChat(dto.getStudentWeChat());
		s.setStudentWeiBo(dto.getStudentWeiBo());
		s.setStudentHomeTown(dto.getStudentHomeTown());
		s.setStudentPresentAddress(dto.getStudentPresentAddress());
		s.setStudentIndustryTag(dto.getStudentIndustryTag());
		s.setStudentCompany(dto.getStudentCompany());
		s.setStudentPost(dto.getStudentPost());
		s.setStudentYear(dto.getStudentYear()); 
		s.setStudentDescription(dto.getStudentDescription());
		return s;
	}
	
	public static Student covertToStudent(StudentDto dto, Student s){
	//	s.setStudentID(dto.getStudentID());
		s.setStudentPWD(dto.getStudentPWD());
		s.setStudentName(dto.getStudentName());
		s.setStudentSex(dto.getStudentSex());
	//	s.setStudentPicturePath(dto.getStudentPicturePath());
		s.setStudentEnrollment(dto.getStudentEnrollment());
		s.setStudentMajor(dto.getStudentMajor());
		s.setStudentTutor(dto.getStudentTutor());
		s.setStudentGoodAt(dto.getStudentGoodAt());
		s.setStudentEmail(dto.getStudentEmail());
		s.setStudentCall(dto.getStudentCall());
		s.setStudentQQ(dto.getStudentQQ());
		s.setStudentWeChat(dto.getStudentWeChat());
		s.setStudentWeiBo(dto.getStudentWeiBo());
		s.setStudentHomeTown(dto.getStudentHomeTown());
		s.setStudentPresentAddress(dto.getStudentPresentAddress());
		s.setStudentIndustryTag(dto.getStudentIndustryTag());
		s.setStudentCompany(dto.getStudentCompany());
		s.setStudentPost(dto.getStudentPost());
		s.setStudentYear(dto.getStudentYear()); 
		s.setStudentDescription(dto.getStudentDescription());
		return s;
	}

	public Teacher teacherConverter(TeacherDto dto){

		return null;
	}

}
