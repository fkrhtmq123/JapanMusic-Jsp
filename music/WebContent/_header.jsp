<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GalaxyMusic</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script><!--최신 폰트어썸-->
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    <script src="/music/js/slider.js"></script>
    <script src="/music/js/terms.js"></script>
    <script src="/music/js/checkUid.js"></script>
    <script src="/music/js/checkPass.js"></script>
    <script src="/music/js/checkEmail.js"></script>
    <script src="/music/js/validation.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
    <link rel="stylesheet" href="/music/css/style.css">
    <link rel="stylesheet" href="/music/shop/css/shop_style.css">
    <link rel="stylesheet" href="/music/board/css/board_style.css">
</head>
<body>
    <div id="music_wrapper">
        <header>
            <div class="main logo">
                <a href="/music">
                    <img src="/music/img/galaxy_music-logo.png" alt="">
                </a>
            </div>
            <div class="main menu">
                <ul>
                    <li>
                        <a href="/music/board/goods-list.do">弦楽器</a>
                        <ol class="dept01">
                            <li><a href="#">バイオリン</a></li>
                            <li><a href="#">チェロ</a></li>
                            <li><a href="#">ビオラ</a></li>
                            <li><a href="#">ウクレレ</a></li>
                            <li><a href="#">エレキギター</a></li>
                            <li><a href="#">ギター</a></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">小道具</a>
                        <ol class="dept01">
                            <li><a href="#">弓</a></li>
                            <li><a href="#">松脂</a></li>
                            <li><a href="#">肩当て</a></li>
                            <li><a href="#">弦</a></li>
                            <li><a href="#">その他</a></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">ケース</a>
                        <ol class="dept01">
                            <li><a href="#">バイオリン</a></li>
                            <li><a href="#">チェロ</a></li>
                            <li><a href="#">ビオラ</a></li>
                            <li><a href="#">ウクレレ</a></li>
                            <li><a href="#">エレキギター</a></li>
                            <li><a href="#">ギター</a></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">共通用品</a>
                        <ol class="dept01">
                            <li><a href="#">譜面台</a></li>
                            <li><a href="#">メトロノーム</a></li>
                            <li><a href="#">チューナー</a></li>
                            <li><a href="#">文具</a></li>
                            <li><a href="#">その他</a></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                            <li></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#">メニュー５</a>
                        <ol class="dept01">
                            <li><a href="#">サブ１</a></li>
                            <li><a href="#">サブ２</a></li>
                            <li><a href="#">サブ３</a></li>
                            <li><a href="#">サブ４</a></li>
                            <li><a href="#">サブ５</a></li>
                            <li><a href="#">サブ６</a></li>
                            <li><a href="#">サブ７</a></li>
                            <li><a href="#">サブ８</a></li>
                            <li><a href="#">サブ９</a></li>
                            <li><a href="#">サブ10</a></li>
                        </ol>
                    </li>
                </ul>
            </div>
            <div class="main member">
                <div>
                    <a href="#"><i class="fas fa-search"></i></a>
                    <c:choose>
                    	<c:when test="${empty member}">
                    		<a href="/music/user/login.do"><i class="fas fa-user"></i></a>
                    	</c:when>
                    	<c:otherwise>
                    		<a href="/music"><i class="fas fa-user"></i></a>
                    	</c:otherwise>
                    </c:choose>
                    <ul>
                    	<c:choose>
                    		<c:when test="${empty member}">
		                        <li><a href="/music/user/login.do">ログイン</a></li>
		                        <li><a href="/music/user/terms.do">新規登録</a></li>
	                        </c:when>
	                        <c:when test="${member.grade == 2}">
	                        	<li><a href="/music/admin/index.do">管理ページ</a></li>
	                        	<li><a href="/music/user/logout.do">ログアウト</a></li>
	                        </c:when>
	                        <c:otherwise>
		                        <li><a href="/music/user/logout.do">ログアウト</a></li>
		                        <li><a href="#">MYページ</a></li>
		                        <li><a href="#">カート</a></li>
	                        </c:otherwise>
                        </c:choose>
                    </ul>
                    <a href="#"><i class="fas fa-bars"></i></a>
                </div>
            </div>
        </header>