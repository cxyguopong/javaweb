package cli.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller()
public class PathVariables {
	
	@RequestMapping("/web/fe/{sitePrefix}/{language}/document/{id}/{naturalText}")
	public String index(Model model, 
			@PathVariable(value="sitePrefix") String sitePrefix,
			@PathVariable(value="language") String language,
			@PathVariable(value="id") Long id,
			@PathVariable(value="naturalText") String naturalText
		){
		
		model.addAttribute("sitePrefix", sitePrefix);
		model.addAttribute("language", language);
		model.addAttribute("id", id);
		model.addAttribute("naturalText", naturalText);

		String docName = "Java tutorial for Beginners";
		if(id == 8108) {
			docName = "Spring MVC for Beginners";
		}
		model.addAttribute("docName", docName);
		return "pathvariable/index";
	}
}
