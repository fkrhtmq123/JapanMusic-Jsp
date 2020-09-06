package kr.galaxymusic.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;
import kr.galaxymusic.vo.ArticleVO;

public class QnaWriteService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		if(req.getMethod().equals("POST")) {
			
			String cate    = req.getParameter("cate");
			String uid     = req.getParameter("uid");
			String pass    = req.getParameter("pass");
			String name    = req.getParameter("name");
			String title   = req.getParameter("title");
			String content = req.getParameter("content");
			String regip   = req.getRemoteAddr();
			
			ArticleVO vo = new ArticleVO();
			vo.setCate(cate);
			vo.setTitle(title);
			vo.setContent(content);
			vo.setUid(uid);
			vo.setName(name);
			vo.setRegip(regip);
			vo.setPass(pass);
			
			BoardDAO dao = BoardDAO.getInstance();
			dao.insertqna(vo);
			
			return "redirect:/music/board/qna-list.do";
			
		}else {
			
			return "/board/qna-write.jsp";	
		}
		
	}

}