package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.UserDAO;

public class SearchIdResultService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		UserDAO dao = UserDAO.getInstance();
		
		String uid = dao.searchID(name, email);
		req.setAttribute("uid", uid);
		
		if(uid == null) {
			return "redirect:/music/user/search-id.do";
		} else {
			return "/user/search-id-result.jsp";
		}
		
	}

}
