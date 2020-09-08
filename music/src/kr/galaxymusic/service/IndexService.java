package kr.galaxymusic.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;
import kr.galaxymusic.vo.ArticleVO;

public class IndexService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		BoardDAO dao = BoardDAO.getInstance();
		
		List<ArticleVO> NoticelatestList = dao.getNoticeLatest();
		List<ArticleVO> QnalatestList = dao.getQnaLatest();
		
		req.setAttribute("NoticelatestList", NoticelatestList);
		req.setAttribute("QnalatestList", QnalatestList);
		
		return "/index.jsp";
	}

}
