package kr.galaxymusic.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;

public class QnaBoardPassService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String seq = req.getParameter("seq");
		String pass = req.getParameter("pass");
		
		BoardDAO dao = BoardDAO.getInstance();
		int result = dao.passQna(seq, pass);
		
		JsonObject json = new JsonObject();
		json.addProperty("result", result);
		
		return "json:"+json.toString();
	}

}
