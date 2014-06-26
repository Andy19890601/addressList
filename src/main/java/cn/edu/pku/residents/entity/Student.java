package cn.edu.pku.residents.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 学生类
 * @author stanley_hwang
 *
 */

@Entity
@Table(name="tlb_student")
public class Student {
	
	@Id
	@GeneratedValue
	private int id;
	private String studentID;
	private String studentPWD;
	private String studentName;
	private String studentSex;
	private String studentPicturePath;
	private String studentEnrollment;
	private String studentMajor;
	private String studentTutor;
	private String studentGoodAt;
	private String studentEmail;
	private String studentCall;
	private String studentQQ;
	private String studentWeChat;
	private String studentWeiBo;
	private String studentHomeTown;
	private String studentPresentAddress;
	private String studentIndustryTag;
	private String studentCompany;
	private String studentPost;
	/** 学生入学年份 */
	private String studentYear; 
	private String studentDescription;
	private int informationComplete;
	
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentYear() {
		return studentYear;
	}
	public void setStudentYear(String studentYear) {
		this.studentYear = studentYear;
	}
	public String getStudentPWD() {
		return studentPWD;
	}
	public void setStudentPWD(String studentPWD) {
		this.studentPWD = studentPWD;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentSex() {
		return studentSex;
	}
	public void setStudentSex(String studentSex) {
		this.studentSex = studentSex;
	}
	public String getStudentPicturePath() {
		return studentPicturePath;
	}
	public void setStudentPicturePath(String studentPicturePath) {
		this.studentPicturePath = studentPicturePath;
	}
	public String getStudentEnrollment() {
		return studentEnrollment;
	}
	public void setStudentEnrollment(String studentEnrollment) {
		this.studentEnrollment = studentEnrollment;
	}
	public String getStudentMajor() {
		return studentMajor;
	}
	public void setStudentMajor(String studentMajor) {
		this.studentMajor = studentMajor;
	}
	public String getStudentTutor() {
		return studentTutor;
	}
	public void setStudentTutor(String studentTutor) {
		this.studentTutor = studentTutor;
	}
	public String getStudentGoodAt() {
		return studentGoodAt;
	}
	public void setStudentGoodAt(String studentGoodAt) {
		this.studentGoodAt = studentGoodAt;
	}
	public String getStudentEmail() {
		return studentEmail;
	}
	public void setStudentEmail(String studentEmail) {
		this.studentEmail = studentEmail;
	}
	public String getStudentCall() {
		return studentCall;
	}
	public void setStudentCall(String studentCall) {
		this.studentCall = studentCall;
	}
	public String getStudentQQ() {
		return studentQQ;
	}
	public void setStudentQQ(String studentQQ) {
		this.studentQQ = studentQQ;
	}
	public String getStudentWeChat() {
		return studentWeChat;
	}
	public void setStudentWeChat(String studentWeChat) {
		this.studentWeChat = studentWeChat;
	}
	public String getStudentWeiBo() {
		return studentWeiBo;
	}
	public void setStudentWeiBo(String studentWeiBo) {
		this.studentWeiBo = studentWeiBo;
	}
	public String getStudentHomeTown() {
		return studentHomeTown;
	}
	public void setStudentHomeTown(String studentHomeTown) {
		this.studentHomeTown = studentHomeTown;
	}
	public String getStudentPresentAddress() {
		return studentPresentAddress;
	}
	public void setStudentPresentAddress(String studentPresentAddress) {
		this.studentPresentAddress = studentPresentAddress;
	}
	public String getStudentIndustryTag() {
		return studentIndustryTag;
	}
	public void setStudentIndustryTag(String studentIndustryTag) {
		this.studentIndustryTag = studentIndustryTag;
	}
	public String getStudentCompany() {
		return studentCompany;
	}
	public void setStudentCompany(String studentCompany) {
		this.studentCompany = studentCompany;
	}
	public String getStudentPost() {
		return studentPost;
	}
	public void setStudentPost(String studentPost) {
		this.studentPost = studentPost;
	}
	public String getStudentDescription() {
		return studentDescription;
	}
	public void setStudentDescription(String studentDescription) {
		this.studentDescription = studentDescription;
	}
	public int getInformationComplete() {
		return informationComplete;
	}
	public void setInformationComplete(int informationComplete) {
		this.informationComplete = informationComplete;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentID=" + studentID
				+ ", studentPWD=" + studentPWD + ", studentName=" + studentName
				+ ", studentSex=" + studentSex + ", studentPicturePath="
				+ studentPicturePath + ", studentEnrollment="
				+ studentEnrollment + ", studentMajor=" + studentMajor
				+ ", studentTutor=" + studentTutor + ", studentGoodAt="
				+ studentGoodAt + ", studentEmail=" + studentEmail
				+ ", studentCall=" + studentCall + ", studentQQ=" + studentQQ
				+ ", studentWeChat=" + studentWeChat + ", studentWeiBo="
				+ studentWeiBo + ", studentHomeTown=" + studentHomeTown
				+ ", studentPresentAddress=" + studentPresentAddress
				+ ", studentIndustryTag=" + studentIndustryTag
				+ ", studentCompany=" + studentCompany + ", studentPost="
				+ studentPost + ", studentYear=" + studentYear
				+ ", studentDescription=" + studentDescription
				+ ", informationComplete=" + informationComplete + "]";
	}
	
	
}
