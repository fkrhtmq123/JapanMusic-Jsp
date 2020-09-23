package kr.galaxymusic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.galaxymusic.config.DBConfig;
import kr.galaxymusic.config.SQL;
import kr.galaxymusic.vo.MemberVO;

public class UserDAO {
	
	private static UserDAO instance = new UserDAO();
	
	public static UserDAO getInstance()  {
		return instance;
	}
	/*
	public TermsVO getTerms() throws Exception {
		Connection conn = DBConfig.getConnetion();
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(SQL.SELECT_TERMS);
		
		TermsVO vo = new TermsVO();
		if(rs.next()) {
			vo.setTerms(rs.getString(1));
			vo.setPrivacy(rs.getString(2));
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		return vo;
		
	}
	*/
	public void registerUser(MemberVO vo) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_REGISTER);
		psmt.setString(1, vo.getUid());
		psmt.setString(2, vo.getPass());
		psmt.setString(3, vo.getName());
		psmt.setString(4, vo.getEmail());
		psmt.setString(5, vo.getHp());
		psmt.setString(6, vo.getTel());
		psmt.setString(7, vo.getZip());
		psmt.setString(8, vo.getAddr1());
		psmt.setString(9, vo.getAddr2());
		psmt.setString(10, vo.getRegip());
		
		psmt.executeUpdate();
		psmt.close();
		conn.close();

	}
	
	public int checkUid(String uid) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_CHECK_UID);
		psmt.setString(1, uid);
		
		ResultSet rs = psmt.executeQuery();
		
		int result = 0;
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return result;
	}
	
	public int checkPass(String pass) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_CHECK_PASS);
		psmt.setString(1, pass);
		
		ResultSet rs = psmt.executeQuery();
		
		int result = 0;
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return result;
	}
	
	public int checkEmail(String email) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_CHECK_EMAIL);
		psmt.setString(1, email);
		
		ResultSet rs = psmt.executeQuery();
		
		int result = 0;
		
		if(rs.next()) {
			result = rs.getInt(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return result;
	}
	
	public MemberVO login(String uid, String pass) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_LOGIN);
		psmt.setString(1, uid);
		psmt.setString(2, pass);
		
		ResultSet rs = psmt.executeQuery();
		
		MemberVO vo = null;
		
		if(rs.next()) {
			vo = new MemberVO();
			vo.setUid(rs.getString(1));
			vo.setPass(rs.getString(2));
			vo.setName(rs.getString(3));
			vo.setEmail(rs.getString(4));
			vo.setHp(rs.getString(5));
			vo.setTel(rs.getString(6));
			vo.setGrade(rs.getInt(7));
			vo.setZip(rs.getString(8));
			vo.setAddr1(rs.getString(9));
			vo.setAddr2(rs.getString(10));
			vo.setRegip(rs.getString(11));
			vo.setRdate(rs.getString(12));
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return vo;
	}
	
	public String searchID(String name, String email) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_SEARCH_ID);
		psmt.setString(1, name);
		psmt.setString(2, email);
		
		ResultSet rs = psmt.executeQuery();
		
		String uid = null;
		
		if(rs.next()) {
			uid = rs.getString(1);
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return uid;
		
	}
	
	public String searchPassword(String uid, String name, String email) throws Exception {
		
		Connection conn = DBConfig.getConnetion();
		PreparedStatement psmt = conn.prepareStatement(SQL.SELECT_SEARCH_PASSWORD);
		psmt.setString(1, uid);
		psmt.setString(2, name);
		psmt.setString(3, email);
		
		ResultSet rs = psmt.executeQuery();
		
		String pass = null;
		
		if(rs.next()) {
			pass = rs.getString("GM_MEMBER.pass");
		}
		
		rs.close();
		psmt.close();
		conn.close();
		
		return pass;
		
	}
	
}
