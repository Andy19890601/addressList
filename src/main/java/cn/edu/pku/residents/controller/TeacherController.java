package cn.edu.pku.residents.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.pku.residents.dto.TeacherDto;
import cn.edu.pku.residents.entity.Teacher;
import cn.edu.pku.residents.service.TeacherService;

@Controller
@RequestMapping(value="/teacher")
public class TeacherController {
	
	@Resource
	private TeacherService teacherService;
		
	@RequestMapping(value="add")
	public void addTeacher(Teacher teacher){
		teacherService.add(teacher);
	}
	
}
