package kr.galaxymusic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import kr.galaxymusic.config.DBConfig;
import kr.galaxymusic.config.SQL;
import kr.galaxymusic.vo.ArticleVO;


public class BoardDAO {
	
	public static BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private BoardDAO() {}
	/*
	public List<ArticleVO> getLatest() throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(SQL.SELECT_LATEST_ARTICLE);
		
		List<ArticleVO> latestList = new ArrayList<>();
		
		while(rs.next()) {
			ArticleVO article = new ArticleVO();
			article.setSeq(rs.getInt(1));
			article.setTitle(rs.getString(2));
			article.setRdate(rs.getString(3).substring(2, 10));
			
			latestList.add(article);
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return latestList;
	}
	*/
	public int getTotalNotice() throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_NOTICE_TOTAL_COUNT);
		
		ResultSet rs = psmt.executeQuery();
		
		int total = 0;
		if(rs.next()) {
			total = rs.getInt(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return total;
	}
	/*
	public int getTotalQna(String cate) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_TOTAL_COUNT);
		psmt.setString(1, cate);
		
		ResultSet rs = psmt.executeQuery();
		
		int total = 0;
		if(rs.next()) {
			total = rs.getInt(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return total;
	}
	*/
	public List<ArticleVO> getNotices(int start) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_NOTICES);
		
		ResultSet rs = psmt.executeQuery();
		
		List<ArticleVO> notices = new ArrayList<>();
		while(rs.next()) {
			ArticleVO vo = new ArticleVO();
			vo.setSeq(rs.getInt(1));
			vo.setParent(rs.getInt(2));
			vo.setTitle(rs.getString(3));
			vo.setContent(rs.getString(4));
			vo.setUid(rs.getString(5));
			vo.setName(rs.getString(6));
			vo.setRegip(rs.getString(7));
			vo.setRdate(rs.getString(8).substring(2, 10));
			vo.setHit(rs.getInt(9));
			notices.add(vo);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return notices;		
	}
	
	public List<ArticleVO> getQnas(int start) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_QNAS);
		
		ResultSet rs = psmt.executeQuery();
		
		List<ArticleVO> qnas = new ArrayList<>();
		while(rs.next()) {
			ArticleVO vo = new ArticleVO();
			vo.setSeq(rs.getInt(1));
			vo.setCate(rs.getString(2));
			vo.setParent(rs.getInt(3));
			vo.setTitle(rs.getString(4));
			vo.setContent(rs.getString(5));
			vo.setUid(rs.getString(6));
			vo.setName(rs.getString(7));
			vo.setRegip(rs.getString(8));
			vo.setRdate(rs.getString(9).substring(2, 10));
			vo.setAnswer(rs.getString(10));
			vo.setPass(rs.getString(11));
			qnas.add(vo);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return qnas;
	}
	
	public int modifyComment(String content, String seq) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.UPDATE_COMMENT);
		psmt.setString(1, content);
		psmt.setString(2, seq);
		
		int result = psmt.executeUpdate();
		psmt.close();
		conn.close();
		
		return result;
	}
	/*
	public ArticleVO getArticle(String seq) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_ARTICLE);
		psmt.setString(1, seq);
		
		ResultSet rs = psmt.executeQuery();
		
		ArticleVO vo = new ArticleVO();
		FileVO fv = new FileVO();
		
		if(rs.next()) {
			vo.setSeq(rs.getInt(1));
			vo.setParent(rs.getInt(2));
			vo.setComment(rs.getInt(3));
			vo.setCate(rs.getString(4));
			vo.setTitle(rs.getString(5));
			vo.setContent(rs.getString(6));
			vo.setHit(rs.getInt(8));
			vo.setUid(rs.getString(9));
			vo.setRegip(rs.getString(10));
			vo.setRdate(rs.getString(11));
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return vo;
		
	}
	*/
	public ArticleVO getQna(String seq) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_QNA);
		psmt.setString(1, seq);
		
		ResultSet rs = psmt.executeQuery();
		
		ArticleVO vo = new ArticleVO();
		
		if(rs.next()) {
			vo.setSeq(rs.getInt(1));
			vo.setParent(rs.getInt(2));
			vo.setComment(rs.getInt(3));
			vo.setTitle(rs.getString(4));
			vo.setContent(rs.getString(5));
			vo.setHit(rs.getInt(6));
			vo.setUid(rs.getString(7));
			vo.setRegip(rs.getString(8));
			vo.setRdate(rs.getString(9));
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return vo;
		
	}
	
	public int insertComment(ArticleVO vo) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_COMMENT);
		psmt.setInt(1, vo.getParent());
		psmt.setString(2, vo.getContent());
		psmt.setString(4, vo.getUid());
		psmt.setString(5, vo.getRegip());

		int result = psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		return result;
	}
	
	public int deleteComment(ArticleVO vo) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.DELETE_COMMENT);
		psmt.setInt(1, vo.getSeq());
		
		int result = psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		return result;
		
	}
	
	public List<ArticleVO> getComments(String parent) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_COMMENTS);
		psmt.setString(1, parent);
		
		ResultSet rs = psmt.executeQuery();
		
		List<ArticleVO> comments = new ArrayList<>();
		while(rs.next()) {
			ArticleVO comment = new ArticleVO();
			
			comment.setSeq(rs.getInt(1));
			comment.setContent(rs.getString(6));
			comment.setUid(rs.getString(9));
			comment.setRegip(rs.getString(10));
			comment.setRdate(rs.getString(11));
			
			comments.add(comment);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return comments;
		
	}
	
	public void insertnotice(ArticleVO vo) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_NOTICE);
		psmt.setString(1, vo.getTitle());
		psmt.setString(2, vo.getContent());
		psmt.setString(3, vo.getUid());
		psmt.setString(4, vo.getName());
		psmt.setString(5, vo.getRegip());
		
		psmt.executeUpdate();
		psmt.close();
		conn.close();		
	}
	
	public void insertqna(ArticleVO vo) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_QNA);
		psmt.setString(1, vo.getCate());
		psmt.setString(2, vo.getTitle());
		psmt.setString(3, vo.getContent());
		psmt.setString(4, vo.getUid());
		psmt.setString(5, vo.getName());
		psmt.setString(6, vo.getRegip());
		psmt.setString(7, vo.getPass());
		
		psmt.executeUpdate();
		psmt.close();
		conn.close();		
	}
	
	public void deleteArticle() throws Exception {}
	public void modifyArticle() throws Exception {}
}