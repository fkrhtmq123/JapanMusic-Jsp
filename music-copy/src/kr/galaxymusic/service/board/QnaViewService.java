package kr.galaxymusic.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;
import kr.galaxymusic.vo.ArticleVO;

public class QnaViewService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String seq   = req.getParameter("seq");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		ArticleVO qvo = dao.getQna(seq);
		
		req.setAttribute("qvo", qvo);
		
		return "/board/qna-view.jsp";
		
	}

}
