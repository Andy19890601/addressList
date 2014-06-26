package cn.edu.pku.residents.service;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.entity.Teacher;
import cn.edu.pku.residents.service.StudentService;
import cn.edu.pku.residents.service.TeacherService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext-common.xml", "classpath:applicationContext-db.xml"})
public class ExpertTest {
	
	
	@Resource
	private TeacherService teacherService;
	
	@Resource 
	private StudentService studentService;
	
	@Test
	public void teacherTest(){
		Teacher t = new Teacher();
		t.setInformationComplete(2);
		t.setTeacherDepartment("Java");
		teacherService.add(t);
	}
	
	@Test
	public void studentTest(){
		Student s = new Student();
		s.setInformationComplete(0);
		s.setStudentID("1301210001");
		s.setStudentName("黄欣");
		studentService.add(s);
	}

	@Test
	public void list(){
	//	System.out.println(studentService.list().size());
	}
	
	@Test
	public void update(){
		Student s = studentService.load(2);
		s.setStudentEmail("1015757334@qq.com");
		studentService.update(s);
	}
	
	@Test
	public void load(){
		Student s = studentService.load(1);
		System.out.println(s.getStudentEmail());
	}
	
	
	
	@Test 
	public void loadTest(){
		Student s = studentService.load(1);
		System.out.println(s.getStudentName());
		//Teacher t = teacherService.load(1);
	}
	
	@Test
	public void listTest(){
//		List<Student> s = studentService.list();
//		List<Teacher> t = teacherService.list();
	}

	@Test
	public void updateTest(){
		Student s = studentService.load(1);
		s.setStudentGoodAt("asdsad");
		studentService.update(s);
	}
	
	@Test
	public void deleteTest(){
		Student s = studentService.load(1);
		studentService.delete(s);
	}
	
}
