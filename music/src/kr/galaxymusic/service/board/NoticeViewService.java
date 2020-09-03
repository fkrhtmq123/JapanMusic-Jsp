package kr.galaxymusic.service.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;
import kr.galaxymusic.vo.ArticleVO;

public class NoticeViewService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String seq   = req.getParameter("seq");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		ArticleVO vo = dao.getNotice(seq);
		
		req.setAttribute("vo", vo);
		
		return "/board/notice-view.jsp";
		
	}

}
