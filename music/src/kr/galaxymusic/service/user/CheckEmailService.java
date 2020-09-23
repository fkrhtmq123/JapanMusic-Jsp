package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.UserDAO;

public class CheckEmailService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String email = req.getParameter("email");
		
		int result = UserDAO.getInstance().checkEmail(email);
		
		JsonObject json = new JsonObject();
		json.addProperty("result", result);
		
		return "json:"+json.toString();
		
	}

}
