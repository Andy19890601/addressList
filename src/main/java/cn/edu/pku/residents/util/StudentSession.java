package cn.edu.pku.residents.util;

/**
 * 学生登录后保留得基本信息
 * @author stanley_hwang
 *
 */
public class StudentSession {
	
	private String studentID;
	
	public StudentSession(String studentID){
		this.studentID = studentID;
	}
	
	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	
}
