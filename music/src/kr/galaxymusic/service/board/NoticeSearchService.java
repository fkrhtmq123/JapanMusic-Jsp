package kr.galaxymusic.service.board;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.galaxymusic.controller.CommonService;
import kr.galaxymusic.dao.BoardDAO;
import kr.galaxymusic.vo.ArticleVO;

public class NoticeSearchService implements CommonService {

	@Override
	public String requestProc(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String pg    = req.getParameter("pg");
		int category = Integer.parseInt(req.getParameter("searchCategory"));
		String keyword = req.getParameter("searchKeyword");
		
		// 페이지 변수 선언
		int total       = getTotal(category, keyword);
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
		List<ArticleVO> notices = new ArrayList<ArticleVO>();
		
		if(category==1) {
			notices = dao.SearchNoticeTitles(keyword, startLimit);
		} else if(category==2) {
			notices = dao.SearchNoticeContents(keyword, startLimit);
		} else if(category==3) {
			notices = dao.SearchNoticeNames(keyword, startLimit);
		}
		
		req.setAttribute("notices", notices);
		req.setAttribute("lastPage", lastPage);
		req.setAttribute("currentPage", currentPage);
		req.setAttribute("listCount", listCount);
		req.setAttribute("groupStart", groupStart);
		req.setAttribute("groupEnd", groupEnd);
		req.setAttribute("category", category);
		req.setAttribute("keyword", keyword);
		
		return "/board/notice.jsp";
	}
	
	public int getTotal(int category, String keyword) throws Exception {
		
		int total = BoardDAO.getInstance().getTotalNotice();
		
		if(category==1) {
			total = BoardDAO.getInstance().TitleTotalNotice(keyword);
		} else if(category==2) {
			total = BoardDAO.getInstance().ContentTotalNotice(keyword);
		} else if(category==3) {
			total = BoardDAO.getInstance().NameTotalNotice(keyword);
		}
		
		return total;
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
		return (currentPage-1)*10;
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
