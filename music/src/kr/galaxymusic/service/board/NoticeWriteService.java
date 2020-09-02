package kr.galaxymusic.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;
import kr.galaxymusic.vo.ArticleVO;

public class NoticeWriteService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		if(req.getMethod().equals("POST")) {
			
			String uid     = req.getParameter("uid");
			String title   = req.getParameter("title");
			String content = req.getParameter("content");
			String name    = req.getParameter("name");
			String regip   = req.getRemoteAddr();
			
			ArticleVO vo = new ArticleVO();
			vo.setTitle(title);
			vo.setContent(content);
			vo.setUid(uid);
			vo.setName(name);
			vo.setRegip(regip);
			
			BoardDAO dao = BoardDAO.getInstance();
			dao.insertnotice(vo);
			
			return "redirect:/music/board/notice-list.do";
			
		}else {
			
			return "/board/notice-write.jsp";	
		}
		
	}

}