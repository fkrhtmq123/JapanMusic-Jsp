package kr.galaxymusic.config;

public class SQL {
	
	// 회원 관련
	//public final static String SELECT_TERMS = "SELECT * FROM `JBOARD_TERMS`";
	
	public final static String SELECT_LOGIN = "SELECT * FROM `GM_MEMBER` "
												+ "WHERE `uid`=? AND `pass`=PASSWORD(?)";
	
	public final static String INSERT_REGISTER = "INSERT INTO `GM_MEMBER` SET "
												+ "`uid`=?, "
												+ "`pass`=PASSWORD(?), "
												+ "`name`=?, "
												+ "`email`=?, "
												+ "`hp`=?, "
												+ "`tel`=?, "
												+ "`zip`=?, "
												+ "`addr1`=?, "
												+ "`addr2`=?, "
												+ "`regip`=?, "
												+ "`rdate`=NOW()";
	
	
	public final static String SELECT_CHECK_UID = "SELECT COUNT(`uid`) FROM `GM_MEMBER` "
													+ "WHERE `uid`=?";
	
	public final static String SELECT_CHECK_PASS = "SELECT COUNT(`pass`) FROM `GM_MEMBER` "
													+ "WHERE `pass`=?";
	
	public final static String SELECT_CHECK_EMAIL = "SELECT COUNT(`email`) FROM `GM_MEMBER` "
													+ "WHERE `email`=?";
	
	public final static String SELECT_SEARCH_ID = "SELECT `uid` FROM `GM_MEMBER` "
													+ "WHERE `name`=? AND `email`=?";
	
	public final static String SELECT_SEARCH_PASSWORD = "SELECT `pass` FROM `GM_MEMBER` "
														+ "WHERE `uid`=? AND `name`=? AND `email`=?";
	
	// 게시물 관련
	public final static String SELECT_NOTICE_LATEST = "SELECT * FROM `GM_NOTICE` "
														+ "ORDER BY `seq`DESC "
														+ "LIMIT 5";
	
	public final static String SELECT_QNA_LATEST = "SELECT * FROM `GM_QNA` "
													+ "ORDER BY `seq`DESC "
													+ "LIMIT 5";
	
	public final static String SELECT_NOTICE_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_NOTICE` "
															+ "WHERE `parent`=0";
	
	public final static String SELECT_NOTICE_TITLE_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_NOTICE` "
																+ "WHERE `title` LIKE ?";
	
	public final static String SELECT_NOTICE_CONTENT_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_NOTICE` "
																+ "WHERE `content` LIKE ?";
	
	public final static String SELECT_NOTICE_NAME_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_NOTICE` "
																+ "WHERE `name` LIKE ?";
	
	public final static String SELECT_QNA_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_QNA` "
															+ "WHERE `parent`=0";
	
	public final static String SELECT_QNA_TITLE_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_NOTICE` "
																+ "WHERE `title` LIKE ?";

	public final static String SELECT_QNA_CONTENT_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_NOTICE` "
																	+ "WHERE `content` LIKE ?";
	
	public final static String SELECT_QNA_NAME_TOTAL_COUNT = "SELECT COUNT(`seq`) FROM `GM_NOTICE` "
																+ "WHERE `name` LIKE ?";
	
	/*
	public final static String UPDATE_ARTICLE = "UPDATE `JBOARD_ARTICLE` SET `title`=?, `content`=? "
												+ "WHERE `seq`=?";
	*/
	public final static String DELETE_NOTICE = "DELETE FROM `GM_NOTICE` "
												+ "WHERE `seq`=?";
	
	public final static String DELETE_QNA = "DELETE FROM `GM_QNA` "
												+ "WHERE `seq`=?";
	
	public final static String UPDATE_HIT = "UPDATE `GM_NOTICE` SET `hit` = `hit` + 1 "
												+ "WHERE `seq`=?";
	
	public final static String SELECT_NOTICE = "SELECT * FROM `GM_NOTICE` "
												+ "WHERE `seq`=?";
	
	public final static String SELECT_QNA = "SELECT * FROM `GM_QNA` "
												+ "WHERE `seq`=?";
	
	public final static String SELECT_NOTICES = "SELECT * FROM `GM_NOTICE` WHERE `parent`=0 " 
												+ "ORDER BY `seq`DESC "
												+ "LIMIT ?, 10";
	
	public final static String SELECT_SEARCH_NOTICES_TITLE = "SELECT * FROM `GM_NOTICE` WHERE `title` LIKE ? " 
															+ "ORDER BY `seq`DESC "
															+ "LIMIT ?, 10";
	public final static String SELECT_SEARCH_NOTICES_CONTENT = "SELECT * FROM `GM_NOTICE` WHERE `content` LIKE ? " 
															+ "ORDER BY `seq`DESC "
															+ "LIMIT ?, 10";
	
	public final static String SELECT_SEARCH_NOTICES_NAME = "SELECT * FROM `GM_NOTICE` WHERE `name` LIKE ? " 
															+ "ORDER BY `seq`DESC "
															+ "LIMIT ?, 10";
	
	public final static String SELECT_QNAS = "SELECT * FROM `GM_QNA` WHERE `parent`=0 " 
												+ "ORDER BY `seq` DESC "
												+ "LIMIT ?, 10";
	
	public final static String SELECT_SEARCH_QNAS_TITLE = "SELECT * FROM `GM_QNA` WHERE `title` LIKE ? " 
																+ "ORDER BY `seq`DESC "
																+ "LIMIT ?, 10";
	public final static String SELECT_SEARCH_QNAS_CONTENT = "SELECT * FROM `GM_QNA` WHERE `content` LIKE ? " 
																+ "ORDER BY `seq`DESC "
																+ "LIMIT ?, 10";
	
	public final static String SELECT_SEARCH_QNAS_NAME = "SELECT * FROM `GM_QNA` WHERE `name` LIKE ? " 
																+ "ORDER BY `seq`DESC "
																+ "LIMIT ?, 10";
	
	public final static String SELECT_ARTICLE_MAX_SEQ = "SELECT MAX(`seq`) FROM `JBOARD_ARTICLE`";
	
	public final static String INSERT_NOTICE = "INSERT INTO `GM_NOTICE` SET "
												+ "`title`=?, "
												+ "`content`=?, "
												+ "`uid`=?, "
												+ "`name`=?, "
												+ "`regip`=?, "
												+ "`rdate`=NOW()";
	
	public final static String INSERT_QNA = "INSERT INTO `GM_QNA` SET "
												+ "`cate`=?, "
												+ "`title`=?, "
												+ "`content`=?, "
												+ "`uid`=?, "
												+ "`name`=?, "
												+ "`regip`=?, "
												+ "`rdate`=NOW(), "
												+ "`pass`=PASSWORD(?)";
	
	public final static String SELECT_QNA_PASS = "SELECT * FROM `GM_QNA` "
												+ "WHERE `seq`=? AND `pass`=PASSWORD(?)";
}
