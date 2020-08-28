package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.galaxymusic.controller.CommonService;

public class LogoutService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		HttpSession sess =req.getSession();
		sess.invalidate();
		
		return "redirect:/music/index.do";
	}

}
