package cli.Controller;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;

@Controller
public class Bean implements ApplicationContextAware {

	private WebApplicationContext wac;
	
	@Override
	public void setApplicationContext(ApplicationContext context) throws BeansException {
		wac = (WebApplicationContext)context;
	}

	@ResponseBody
	@RequestMapping("/bean")
	public String index(){
		Object stu1 = wac.getBean("student");
		Object stu2 = wac.getBean("student");
		
		System.out.println("stu1 : " + stu1 + " ; stu2 : "+stu2 + "; stu1 == stu2 : " + (stu1 == stu2));  
		return "index";
	}
}
