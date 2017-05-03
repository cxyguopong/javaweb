package cli.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/student")
public class Student {
	
	@RequestMapping(value="")
	public ModelAndView index(){
		ModelAndView mav = new ModelAndView("student/student"); 
		mav.addObject("command", new cli.pojo.Student()); 
		mav.addObject("command1", new cli.pojo.Student1());
		return mav;
	}
	
	@RequestMapping("add")
	public String add(@ModelAttribute cli.pojo.Student student, ModelMap model){
		model.addAttribute("name", student.getName());
		model.addAttribute("age", student.getAge());
		model.addAttribute("id", student.getId());
		model.addAttribute("subject", student.getSubject());
		model.addAttribute("gender", student.getGender());
		
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
}
