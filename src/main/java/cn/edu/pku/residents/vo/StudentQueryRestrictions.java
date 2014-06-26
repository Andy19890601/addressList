package cn.edu.pku.residents.vo;

/**
 * 学生查询条件
 * @author stanley_hwang
 *
 */
public class StudentQueryRestrictions {
	
	private String studentName;
	private String studentSex;
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
	private String studentYear;
	
	public String getStudentYear() {
		return studentYear;
	}
	public void setStudentYear(String studentYear) {
		this.studentYear = studentYear;
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
	@Override
	public String toString() {
		return "StudentQueryRestrictions [studentName=" + studentName
				+ ", studentSex=" + studentSex + ", studentEnrollment="
				+ studentEnrollment + ", studentMajor=" + studentMajor
				+ ", studentTutor=" + studentTutor + ", studentGoodAt="
				+ studentGoodAt + ", studentEmail=" + studentEmail
				+ ", studentCall=" + studentCall + ", studentQQ=" + studentQQ
				+ ", studentWeChat=" + studentWeChat + ", studentWeiBo="
				+ studentWeiBo + ", studentHomeTown=" + studentHomeTown
				+ ", studentPresentAddress=" + studentPresentAddress
				+ ", studentIndustryTag=" + studentIndustryTag
				+ ", studentCompany=" + studentCompany + ", studentYear="
				+ studentYear + "]";
	}
	
	
}
