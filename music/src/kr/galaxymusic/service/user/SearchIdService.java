package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;

public class SearchIdService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		return "/user/search-id.jsp";
	}

}
