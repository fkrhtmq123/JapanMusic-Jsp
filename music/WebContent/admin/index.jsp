<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GalaxyMusic管理ページ</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://kit.fontawesome.com/20962f3e4b.js" crossorigin="anonymous"></script><!--최신 폰트어썸-->
    <script src='./js/gnb.js'></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="./css/admin.css">
    <style>
        
    </style>
</head>
<body>
    <div id="admin-wrapper">
        <header>
            <div>
                <img src="./img/admin_logo.png" alt="">
                <p>
                    <span>${member.name}&nbsp様 　おはようございます。</span>
                    <a href="/music/admin/index.do">ホーム |</a>
                    <a href="/music/user/logout.do">ログアウト |</a>
                    <a href="#">お問い合わせ</a>
                </p>
            </div>
        </header>
        <main>
            <aside>
                <!-- Global Navigation Bar -->
                <ul id="gnb">
                    <li>
                        <a href="#"><i class="fas fa-cogs"></i>環境設定</a>
                        <ol>
                            <li><a href="#">基本環境設定</a></li>
                            <li><a href="#">バナー管理</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-users"></i>会員管理</a>
                        <ol>
                            <li><a href="#">会員現況</a></li>
                            <li><a href="#">ポイント管理</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="fas fa-box-open"></i>商品管理</a>
                        <ol>
                            <li><a href="#">商品現況</a></li>
                            <li><a href="#">商品登録</a></li>
                            <li><a href="#">在庫管理</a></li>
                        </ol>
                    </li>
                    <li>
                        <a href="#"><i class="far fa-credit-card"></i>注文管理</a>
                        <ol>
                            <li><a href="#">注文現況</a></li>
                            <li><a href="#">売上現況</a></li>
                            <li><a href="#">決済管理</a></li>
                            <li><a href="#">配送管理</a></li>
                        </ol>
                    </li>
                </ul>
            </aside>
            <section id="main">
                <nav>
                    <h3>管理者メイン</h3>
                    <p>
                        HOME > <strong>メイン</strong>
                    </p>
                </nav>
                
                <h4>ショッピングモール 運営現況</h4>
                <article>
                    <table border="1">
                        <tr>
                            <th>
                                <strong>注文件(件)</strong>
                                <span>131</span>
                            </th>
                            <th>
                                <strong>注文金額(円)</strong>
                                <span>1,130,000</span>
                            </th>
                            <th>
                                <strong>会員数(名)</strong>
                                <span>1,014</span>
                            </th>
                            <th>
                                <strong>ショッピングモール 訪問(名)</strong>
                                <span>1,014</span>
                            </th>
                            <th>
                                <strong>新規掲示(件	)</strong>
                                <span>100</span>
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Moblie</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Moblie</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Moblie</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Moblie</span>
                                    <span>71</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>PC</span>
                                    <span>60</span>
                                </p>
                                <p>
                                    <span>Moblie</span>
                                    <span>71</span>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>
                                    <span>昨日</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>週間</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>月間</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>昨日</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>週間</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>月間</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>昨日</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>週間</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>月間</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>昨日</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>週間</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>月間</span>
                                    <span>30</span>
                                </p>
                            </td>
                            <td>
                                <p>
                                    <span>昨日</span>
                                    <span>4</span>
                                </p>
                                <p>
                                    <span>週間</span>
                                    <span>10</span>
                                </p>
                                <p>
                                    <span>月間</span>
                                    <span>30</span>
                                </p>
                            </td>
                        </tr>
                    </table>
                </article>

                <h4>주문 업무현황</h4>
                <article>
                    <table border="1">
                        <tr>
                            <th>
                                <strong>入金待機件(件)</strong>
                                <span>100</span>
                            </th>
                            <th>
                                <strong>配送準備件(件)</strong>
                                <span>100</span>
                            </th>
                            <th>
                                <strong>最小要請(件)</strong>
                                <span>100</span>
                            </th>
                            <th>
                                <strong>交換要請(件)</strong>
                                <span>100</span>
                            </th>
                            <th>
                                <strong>返品要請(件)</strong>
                                <span>100</span>
                            </th>
                        </tr>
                    </table>
                </article>

                <div>
                    <article class="notice">
                        <h4>お知らせ</h4>
                        <table border="1">
                            <tr>
                                <th>
                                	<c:forEach var="nl" items="${NoticelatestList}">
	                                    <p>
	                                        <span><a href="/music/board/notice-view.do?seq=${ nl.seq }">${nl.title}</a></span>
	                                        <span>${nl.rdate}</span>
	                                    </p>
                                    </c:forEach>
                                </th>
                            </tr>
                        </table>
                    </article>
                    
                    <article class="notice">
                        <h4>お問い合わせ</h4>
                        <table border="1">
                            <tr>
                                <th>
                                    <c:forEach var="ql" items="${QnalatestList}">
	                                    <p>
	                                        <span><a href="/music/board/qna-view.do?seq=${ ql.seq }">${ql.title}</a></span>
	                                        <span>${ql.rdate}</span>
	                                    </p>
                                    </c:forEach>
                                </th>
                            </tr>
                        </table>
                    </article>
                </div>
            </section>
        </main>
        <footer>
            <div>
                <p>Copyright ©GalxayMusic.co.kr All rights reserved. GalxayMusic ADMINISTRATOR Version 5.4.1.2</p>
            </div>
        </footer>
    </div>
</body>
</html>