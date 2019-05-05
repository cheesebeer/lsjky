package ky.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ky.pojo.BaseDict;
import ky.pojo.Student;
import ky.pojo.QueryVo;
import ky.service.BaseDictService;
import ky.service.StudentService;
import ky.utils.Page;

/**
 * 考生信息请求请求处理
 * 
 * @author lihan
 *
 */
@Controller
@RequestMapping("student")
public class StudentController {
	@Autowired
	private BaseDictService dictService;
	@Autowired
	private StudentService studentService;

	@Value("${majorType}")
	private String majorType;
	
	@Value("${undergraduateLevelType}")
	private String undergraduateLevelType;
	
	@Value("${gpaType}")
	private String gpaType;
	@Value("${englishLevelType}")
	private String englishLevelType;
	@Value("${crossMajorType}")
	private String crossMajorType;
	@Value("${numberOfExamType}")
	private String numberOfExamType;
	@Value("${prizeAndProjectType}")
	private String prizeAndProjectType;
/*	<!-- 	
 * 	private String major;
	private String name;
	private String undergraduateLevel;
	private String gpa;
	private String englishLevel;
	private String crossMajor;
	private String numberOfExam;
	private String prizeAndProject; -->*/

	@RequestMapping("list")
	public String list(Model model,QueryVo vo) {

		

		// 查询来源
		List<BaseDict> schoolList = dictService.getBaseDictByCode(undergraduateLevelType);
		// 查询行业
		List<BaseDict> gpaList = dictService.getBaseDictByCode(gpaType);
		// 查询级别
		List<BaseDict> majorList = dictService.getBaseDictByCode(majorType);

		List<BaseDict> englishList = dictService.getBaseDictByCode(englishLevelType);
		List<BaseDict> crossList = dictService.getBaseDictByCode(crossMajorType);
		List<BaseDict> numberList = dictService.getBaseDictByCode(numberOfExamType);
		List<BaseDict> prizeList = dictService.getBaseDictByCode(prizeAndProjectType);

		// 设置数据模型返回
		model.addAttribute("schoolList", schoolList);
		model.addAttribute("gpaList", gpaList);
		model.addAttribute("englishList", englishList);
		model.addAttribute("crossList", crossList);
		model.addAttribute("numberList", numberList);
		model.addAttribute("prizeList", prizeList);
		model.addAttribute("majorList", majorList);
		Page<Student> page = this.studentService.getStudentByQueryVo(vo);
		//设置分页数返回
				model.addAttribute("page", page);
				
				//返回查询条件
				model.addAttribute("vo", vo);

		return "student";
	}
	@RequestMapping("myTag")
	public String myTag() {
		return "myTag";
	}

}
