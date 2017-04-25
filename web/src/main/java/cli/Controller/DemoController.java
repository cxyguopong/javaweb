package cli.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class DemoController {

    @RequestMapping(value = "profile", method=RequestMethod.GET)
    public String index() {
    	System.out.println("profile");
    	
        return "first";
    }
    
    @RequestMapping(value = "profile", method=RequestMethod.POST)
    public String index1() {
    	System.out.println("profile do");
        return "first";
    }
    
    @RequestMapping("")
    public String homepage(){
    	return "homepage";
    }
    
    //²âÊÔ ÊÇ·ñ¾²Ì¬ÎÄ¼þ±»À¹½Ø /css/style.css, /js/jquery.js
//    @RequestMapping(value="/*/*")
//    public String index2(){
//    	System.out.println("kakaduoduo");
//    	return "homepage";
//    }
}