package kr.galaxymusic.service.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.UserDAO;
import kr.galaxymusic.vo.MemberVO;

public class RegisterCompleteService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
			if(req.getMethod().equals("POST")) {
			
			MemberVO vo = new MemberVO();
			vo.setUid(req.getParameter("uid"));
			vo.setPass(req.getParameter("pass1"));
			vo.setName(req.getParameter("name"));
			vo.setEmail(req.getParameter("email"));
			vo.setHp(req.getParameter("hp"));
			vo.setTel(req.getParameter("tel"));
			vo.setZip(req.getParameter("zip"));
			vo.setAddr1(req.getParameter("addr1"));
			vo.setAddr2(req.getParameter("addr2"));
			vo.setRegip(req.getRemoteAddr());
			
			UserDAO dao = UserDAO.getInstance();
			dao.registerUser(vo);
			
			return "redirect:/music/user/register-complete.do";
		}
		
		return "/user/register-complete.jsp";
	}

}
