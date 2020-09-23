package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.UserDAO;

public class CheckPassService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String pass = req.getParameter("pass");
		
		int result = UserDAO.getInstance().checkPass(pass);
		
		JsonObject json = new JsonObject();
		json.addProperty("result", result);
		
		return "json:"+json.toString();
		
	}

}
