package cn.edu.pku.residents.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.pku.residents.dto.StudentDto;
import cn.edu.pku.residents.entity.Student;
import cn.edu.pku.residents.service.StudentService;
import cn.edu.pku.residents.util.DtoUtil;
import cn.edu.pku.residents.util.StringUtil;
import cn.edu.pku.residents.util.StudentSession;
import cn.edu.pku.residents.vo.Page;
import cn.edu.pku.residents.vo.StudentQueryRestrictions;

/**
 * 学生信息控制层
 * @author stanley_hwang
 *
 */
@Controller
@RequestMapping(value="/")
public class StudentController {

	@Resource
	private StudentService studentService;

	/**
	 * 进入登录页面
	 * @return
	 */
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String loginPage(){
		return "student-login";
	}

	/**
	 * 进入注册页面
	 * @return
	 */
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String registerPage(){
		return "student-register";
	}

	/**
	 * 学生信息更新页面
	 * @param session
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/studentUpdatingInfo")
	public String updatePage(HttpSession session, HttpServletRequest req){
		StudentSession ss = (StudentSession)session.getAttribute("studentSession");
		Student student = studentService.getStudentByID(ss.getStudentID());
		req.setAttribute("studentUpdatingInfo", student);
		return "updateStudentInfo";
	}

	/**
	 * 添加用户
	 * @param student
	 */
	@RequestMapping(value="add")
	public void addStudent(Student student){
		studentService.add(student);
	}

	/**
	 * 用户信息界面
	 * @return
	 */
	@RequestMapping(value="stuInformation")
	public String stuInformation(){
		return "stuInformation";
	}

	/**
	 * 搜索学生结果
	 * @param restrictions
	 * @param page
	 */
	@RequestMapping(value="search")
	public String searchStudents(StudentQueryRestrictions restrictions, Page page, HttpServletRequest req){
		System.out.println("--------Student Controller------------");
		System.out.println(restrictions.toString());
		System.out.println("page init=" + page.toString());
		List<Student> studentList = studentService.list(restrictions, page);
		Page p = studentService.paging(restrictions, page);
		System.out.println("page=" + p.toString());
		req.setAttribute("studentList", studentList);
		req.setAttribute("studentQueryRestrictions", restrictions);
		req.setAttribute("pageUtil", p);
		System.out.println(studentList.size());
		return "searchResult";
	}

	/**
	 * 更新学生信息
	 * @param restrictions
	 * @param page
	 */
	@RequestMapping(value="updateStudentInfo")
	public String updateStudentInfo(StudentDto s, HttpServletRequest req){
		req.getSession().setAttribute("updateStudentInfo", s);
		return "uploadingImage";
	}

	/**
	 * 
	 * 修改默认密码
	 * 
	 * @param password
	 * @return
	 */
	@RequestMapping(value="/changePWD")
	public String changePassword(String password, HttpSession session){
		StudentSession ss = (StudentSession)session.getAttribute("studentSession");
		Student student = studentService.getStudentByID(ss.getStudentID());
		student.setStudentPWD(password);
		studentService.update(student);
		return "redirect:/index";
	}

	/**
	 * 
	 * 展示学生详细信息
	 * @param session
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/showStudentInfo")
	public String showStudentDetailInfo(HttpSession session, HttpServletRequest req){
		StudentSession ss = (StudentSession)session.getAttribute("studentSession");
		Student student = studentService.getStudentByID(ss.getStudentID());
		req.setAttribute("studentDetailInfo", student);
		return "studentedit";
	}

	/**
	 * 
	 * 更新学生详细信息
	 * @param session
	 * @param req
	 * @return
	 */
	@RequestMapping(value="/updatingStudentInfo")
	public String showStudentDetailInfo(StudentDto dto){
		Student s = studentService.getStudentByID(dto.getStudentID());
		if(s != null){
			//	s.setInformationComplete(1);
			s.setStudentName(dto.getStudentName());
			s.setStudentSex(dto.getStudentSex());
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
			//	s.setStudentPicturePath(file_ture_name);
			studentService.update(s);
		}
		return "homepage";
	}


	/**
	 * 上传头像
	 * @return
	 */
	@RequestMapping(value="uploadImg", method = RequestMethod.POST)
	public String uploadImg(MultipartFile file, HttpServletRequest request, ModelMap model)
			throws IOException{
		System.out.println("开始");  
		StudentDto dto = (StudentDto)request.getSession().getAttribute("updateStudentInfo");
		String pic_path =  request.getSession().getServletContext().getRealPath("/static/upload/"); 
		String pic_type = file.getContentType();
		String file_ture_name = dto.getStudentName() + (int)(Math.random()*100 + 1);
		String savePicType = "";
		if(pic_type.equals("image/jpeg")){
			file_ture_name =   file_ture_name.concat(".jpg");
			savePicType = "jpg";
		} else if (pic_type.equals("image/png")){
			file_ture_name = file_ture_name.concat(".png");
			savePicType = "png";
		} else if(pic_type.equals("image/bmp")){
			file_ture_name =  file_ture_name.concat(".bmp");
			savePicType = "bmp";
		} else if(pic_type.equals("image/gif")){
			file_ture_name = file_ture_name.concat(".gif");
			savePicType = "gif";
		} else { 
			file_ture_name = file_ture_name.concat(".jpg");
			savePicType = "jpg";
		}
		/*保存文件*/
		try {
			FileUtils.copyInputStreamToFile(file.getInputStream(), new File(pic_path, file_ture_name));
			//更新用户数据
			Student s2 = studentService.getStudentByID(dto.getStudentID());
			Student s = studentService.load(s2.getId());
			System.out.println(s.toString());
			System.out.println(dto.toString());
			if(s != null){
				s.setInformationComplete(1);
				s.setStudentName(dto.getStudentName());
				s.setStudentSex(dto.getStudentSex());
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
				s.setStudentPicturePath(file_ture_name);
				studentService.update(s);
			}else{
				studentService.add(DtoUtil.newStudent(dto));
			}
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return "redirect:/index";  
	}


	/**
	 * 上传头像
	 * 		大小不得超过10M
	 * @return
	 */
	@RequestMapping(value="updateUploadImg", method = RequestMethod.POST)
	@ResponseBody
	public String updateUploadImg(MultipartFile file, HttpServletRequest request, ModelMap model,
			HttpSession session) throws IOException{
		if(file.getSize() <= 10000000){
			StudentSession studentSession = (StudentSession)session.getAttribute("studentSession");
			Student s = studentService.getStudentByID(studentSession.getStudentID());
			String pic_path =  request.getSession().getServletContext().getRealPath("/static/upload/"); 
			String pic_type = file.getContentType();
			String file_true_name = s.getStudentID() + (int)(Math.random()*100 + 1);
			String savePicType = "";
			if(pic_type.equals("image/jpeg")){
				file_true_name = file_true_name.concat(".jpg");
				savePicType = "jpg";
			} else if (pic_type.equals("image/png")){
				file_true_name = file_true_name.concat(".png");
				savePicType = "png";
			} else if(pic_type.equals("image/bmp")){
				file_true_name = file_true_name.concat(".bmp");
				savePicType = "bmp";
			} else if(pic_type.equals("image/gif")){
				file_true_name = file_true_name.concat(".gif");
				savePicType = "gif";
			} else { 
				file_true_name = file_true_name.concat(".jpg");
				savePicType = "jpg";
			}
			/*保存文件*/
			try {
				FileUtils.copyInputStreamToFile(file.getInputStream(), new File(pic_path, file_true_name));
				//更新用户数据
				String picturePath = "/static/upload/" + file_true_name;
				System.out.println("picturePath:" + picturePath);
				s.setStudentPicturePath(picturePath);
				studentService.update(s);
			} catch (IOException e) {
				e.printStackTrace();
			} 
		}else{
			model.addAttribute("upload_img_error", "上传文件过大！");
			throw new RuntimeException("upload too large image!");
		}
		return "redirect:/index";  
	}

	/**
	 * 上传头像界面
	 * @return
	 */
	@RequestMapping(value="uploadingImage")
	public String uploadingImg(){
		return "uploadingImage";
	}

	/**
	 * 上传头像界面
	 * @return
	 */
	@RequestMapping(value="modifyImage")
	public String modifyImg(){
		return "modifyImage";
	}


}

