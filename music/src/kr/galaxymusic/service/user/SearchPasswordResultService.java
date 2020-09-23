package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.UserDAO;

public class SearchPasswordResultService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		String uid = req.getParameter("uid");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		UserDAO dao = UserDAO.getInstance();
		
		String pass = dao.searchPassword(uid, name, email);
		req.setAttribute("pass", pass);
		
		if(pass == null) {
			return "redirect:/music/user/search-password.do";
		} else {
			return "/user/search-password-result.jsp";
		}
		
	}

}
