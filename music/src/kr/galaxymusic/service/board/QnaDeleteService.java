package kr.galaxymusic.service.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;

public class QnaDeleteService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String seq = req.getParameter("seq");
		
		BoardDAO dao = BoardDAO.getInstance();
		dao.deleteQna(seq);
		
		return "redirect:/music/board/qna-list.do";
	}

}
