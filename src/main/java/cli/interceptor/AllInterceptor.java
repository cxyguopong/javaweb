package cli.interceptor;

import org.springframework.ui.ModelMap;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.context.request.WebRequestInterceptor;

public class AllInterceptor implements WebRequestInterceptor {

	public void afterCompletion(WebRequest arg0, Exception arg1) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("AllInterceptor afterCompletion , request over £¡");
	}

	public void postHandle(WebRequest arg0, ModelMap map) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("AllInterceptor postHandle ----------------------");
		map.put("name", "wangxian");
		map.put("sex", "male");
	}

	public void preHandle(WebRequest request) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("AllInterceptor preHandle ----------------------");
		request.setAttribute("request", "request", WebRequest.SCOPE_REQUEST);
	}

}
