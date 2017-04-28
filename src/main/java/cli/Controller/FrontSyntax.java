package cli.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("/frontsyntax")
public class FrontSyntax {
	
	@RequestMapping("")
	public String index(){
		return "frontsyntax/index";
	}
	
	@RequestMapping("testscope")
	public String testScopeValue(){
		return "frontsyntax/test_get_param";
	}
}
