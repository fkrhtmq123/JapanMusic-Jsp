package kr.galaxymusic.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private Map<String, Object> instances = new HashMap<>();

	@Override
	public void init(ServletConfig config) throws ServletException {
		
		// ?λ‘νΌ?° ??Ό κ²½λ‘ κ΅¬νκΈ?
		ServletContext sc = config.getServletContext();
		String path = sc.getRealPath("/WEB-INF") + "/urlMapping.properties";
		
		Properties prop = new Properties();
		
		try {
			// ?λ‘νΌ?° ??Όκ³? ?? ₯ ?€?Έλ¦? ?°κ²?
			FileInputStream fis = new FileInputStream(path);
			// ?? ₯ ?€?Έλ¦ΌμΌλ‘? ?λ‘νΌ?° ??Ό ?½?΄? propκ°μ²΄ key-Map κ΅¬μ‘°λ‘? ???₯
			prop.load(fis);
			// ?? ₯ ?€?Έλ¦? ?΄? 
			fis.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// prop κ°μ²΄λ₯? κ°?μ§?κ³? ??  Model κ°μ²΄λ₯? Map? ???₯
		Iterator iter = prop.keySet().iterator();
		
		while(iter.hasNext()) {
			
			String k = iter.next().toString();
			String v = prop.getProperty(k);
			
			try {
				Class obj = Class.forName(v);
				Object instance = obj.newInstance();
				
				instances.put(k, instance);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			requestProc(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			requestProc(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String path = req.getContextPath(); // -> /Ch18
		String uri  = req.getRequestURI(); // -> /Ch18/hello.do
		
		String action = uri.substring(path.length()); // -> /hello.do
		
		CommonService instance = (CommonService) instances.get(action);
		String result = instance.requestProc(req, resp);
		
		if(result.startsWith("redirect:")) {
			// λ¦¬λ€?΄? ?Έ
			String redirectURL = result.substring(9);
			resp.sendRedirect(redirectURL);
		} else if(result.startsWith("json:")) {
			PrintWriter out = resp.getWriter();
			out.print(result.substring(5));
		} else {
			// View ?¬??
			RequestDispatcher dispatcher =  req.getRequestDispatcher(result);
			dispatcher.forward(req, resp);
		}
		
		/*
		if(action.equals("/hello.do")) {
			
			CommonService service = new HelloService();
			result = service.requestProc(req, resp);
			
		} else if (action.equals("/welcome.do")) {
			
			CommonService service = new WelcomeService();
			result = service.requestProc(req, resp);
			
		} else if (action.equals("/greeting.do")) {
			
			CommonService service = new GreetingService();
			result = service.requestProc(req, resp);
			
		}
		*/
		
	}
	
}
