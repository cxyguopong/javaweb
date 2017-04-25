package cli.interceptor;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class UserSecurity implements HandlerInterceptor {

	public boolean preHandle(HttpServletRequest paramHttpServletRequest, HttpServletResponse res,
			Object paramObject) throws Exception {
		
		res.setContentType("text/html;charset=UTF-8;pageEncoding=UTF-8");
		
		System.out.println("Interceptor UserSecurity (preHandle) : -----------------");
		
		Date date = new Date();
		long timestamp = date.getTime();
		
		SimpleDateFormat adf = new SimpleDateFormat("yyyy/M/dd HH:m:ss");
		
		boolean iseven = timestamp % 2 == 0;
		
		String info  = (new Formatter()).format("date : %s; timestamp : %s; timestamp is %s", adf.format(timestamp), timestamp, (iseven ? "even" : "odd")).toString();
		System.out.println(info) ;
		
		
		if (!iseven) {
			res.getWriter().println("<h2 style=\"color:#03a9f4\">" + info + "</h2>");
		} else {
			//paramObject.
		}
		
		return iseven;
	}

	public void postHandle(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse,
			Object paramObject, ModelAndView paramModelAndView) throws Exception {
		System.out.println("Interceptor UserSecurity (postHandle) : -----------------");
		

	}

	public void afterCompletion(HttpServletRequest paramHttpServletRequest,
			HttpServletResponse paramHttpServletResponse, Object paramObject, Exception paramException)
			throws Exception {
		System.out.println("Interceptor UserSecurity (afterCompletion) : -----------------");

	}

}
