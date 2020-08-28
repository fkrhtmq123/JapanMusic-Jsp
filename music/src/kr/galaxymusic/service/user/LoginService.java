package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.UserDAO;
import kr.galaxymusic.vo.MemberVO;

public class LoginService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		if(req.getMethod().equals("POST")) {
			
			String uid = req.getParameter("uid");
			String pass = req.getParameter("pass");
			
			UserDAO dao = UserDAO.getInstance();
			MemberVO vo = dao.login(uid, pass);
			
			if(vo != null) {
				//会員の場合
				HttpSession sess = req.getSession();
				sess.setAttribute("member", vo);
				
				return "redirect:/music/index.do";
			} else {
				//会員じゃ場合
				return "redirect:/music/user/login.do";
			}
			
		} else {
			return "/user/login.jsp";
		}
	}

}
