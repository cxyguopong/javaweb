package cli.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student")
public class Student {
	
	//用来测试 java的线程安全问题
	private int count;
	
	@Autowired
	@Qualifier("studentvalidator")
	private Validator validator;
	
//	@InitBinder
//	private void initBinder(WebDataBinder binder) {
//		binder.setValidator(validator);
//	}
	
	@RequestMapping(value="")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView("student/student");
		
		cli.pojo.Student cps = new cli.pojo.Student();
		cps.setName("华"); 
		cps.setAge(25); 
		mav.addObject(cps);  
		//mav.addObject("command1", new cli.pojo.Student1()); 
		return mav;
	}
	
	@RequestMapping("add")
	public String add( @Validated cli.pojo.Student student, BindingResult bindingResult, ModelMap model){
		model.addAttribute(student);
		if (bindingResult.hasErrors()) { 
			return "student/student";
		}
		return "student/result";
	}
	
	@RequestMapping("redirect")
	public String redirectx() {
		return "redirect:add";
	}
	
	@ModelAttribute("subjectLists")
	public List<String> getSubjectLists(){
		List<String> ls = new ArrayList<>();
		ls.add("Spring Mvc");
		ls.add("Spring Boot");
		ls.add("Struct2");
		ls.add("Apache Hadoop");
		return ls;
	}
	
	@ModelAttribute("zz")
	public long count(){
		return count++;
	}
}
