package cli.Controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cli.pojo.File;

@Controller
public class FileUpload {
	
	@Autowired
	ServletContext context;
	
	@RequestMapping(value="/fileupload", method = RequestMethod.GET)
	public ModelAndView fileUploadPage() {
		File file =new File();
		ModelAndView mav = new ModelAndView("fileupload", "file", file); 
		return mav;
	}
	
	@RequestMapping(value="/fileupload", method = RequestMethod.POST)
	public String postFileUploadPage(@Validated File file, BindingResult result, ModelMap model)  {
		if (result.hasErrors()) {
			return "fileupload";
		} 
		
		MultipartFile multifile = file.getFile();
		String uploadpath = context.getRealPath() + File.se
	}
}
