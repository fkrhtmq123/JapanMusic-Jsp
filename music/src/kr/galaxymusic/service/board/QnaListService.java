package kr.galaxymusic.service.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;
import kr.galaxymusic.vo.ArticleVO;

public class QnaListService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String pg    = req.getParameter("pg");
		
		// 페이지 변수 선언
		int total       = getTotal();
		int lastPage    = getLastPage(total);
		int currentPage = getCurrentPage(pg);
		int startLimit  = getStartLimit(currentPage);
		int listCount   = (total - startLimit) + 1;
		
		int groupCurrent = (int)Math.ceil(currentPage/10.0);
		int groupStart = (groupCurrent - 1) * 10 + 1;
		int groupEnd = groupCurrent * 10;
		
		if(groupEnd > lastPage) {
			groupEnd = lastPage;
		}
				
		BoardDAO dao = BoardDAO.getInstance();
		List<ArticleVO> qnas = dao.getQnas(startLimit);
		
		req.setAttribute("qnas", qnas);
		req.setAttribute("lastPage", lastPage);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("listCount", listCount);
		req.setAttribute("groupStart", groupStart);
		req.setAttribute("groupEnd", groupEnd);
		
		return "/board/qna.jsp";
	}
	
	public int getTotal() throws Exception {
		return BoardDAO.getInstance().getTotalNotice();
	}
	
	public int getLastPage(int total) {
		int lastPage = 0;
		
		if(total % 10 == 0) {
			lastPage = total / 10;
		}else {
			lastPage = total / 10 + 1;
		}
		
		return lastPage;
	}
	
	public int getStartLimit(int currentPage) {
		//return (currentPage-1)*10;
		int startLimit = (currentPage - 1) * 10;
		
		return startLimit;
	}
	
	public int getCurrentPage(String pg) {
		
		int currentPage = 0;
		
		if(pg == null) {
			currentPage = 1;
		}else {
			currentPage = Integer.parseInt(pg);
		}
		
		return currentPage;
	}

}
