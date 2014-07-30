package cn.edu.pku.residents.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.edu.pku.residents.entity.Student;
import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;
import jxl.read.biff.BiffException;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext-common.xml", "classpath:applicationContext-db.xml"})
public class ExcelTest {

	@Autowired
	private StudentService studentService;
	
	public void list(){
	}
	
	@Test
	public void addDataByExcel(){

		try {
			Workbook book = Workbook.getWorkbook(new File("/Users/stanley_hwang/Desktop/data.xls"));
			Sheet sheet = book.getSheet(0);
			int digit = 0;
			for(int j = 1; j < sheet.getRows(); j++){
				Student s = new Student();
				//StringBuilder resultStr= new StringBuilder();
				for(int i = 0; i < sheet.getColumns(); i++){
					Cell cell1 = sheet.getCell(i,j);					
					String result = cell1.getContents();
				//	resultStr.append(result).append(" ");
					if(digit == 0){
						s.setStudentID(result);
					}
					if(digit == 1){
						s.setStudentName(result);
					}
					if(digit == 2){
						s.setStudentSex(result);
					}
					if(digit == 3){
						s.setStudentMajor(result);
					}
					if(digit == 4){
						s.setStudentTutor(result);
					}
					if(digit == 5){
						s.setStudentLicense(result);
					}
					s.setStudentPWD("123456");
					digit++;
				}
			//	System.out.println(resultStr.toString());
				digit=0;
				studentService.add(s);
			}
			book.close();
		} catch (BiffException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();			
		}
	}

}
