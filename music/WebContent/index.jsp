<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>
<main class="index">
    <section class="slider">
        <ul>
            <li>
                <a href="#">
                    <img src="/music/img/violin_image.jpg">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="/music/img/viola_image.jpg">
                </a>
            </li>
            <li>
                <a href="#">
                    <img src="/music/img/cello_image.jpg">
                </a>
            </li>
        </ul>
    </section>
    <section class="content">
        <div class="string_instrument">
            <p>弦楽器</p>
            <span>幅広い音域と 感性的音色</span>
            <img src="/music/img/violin_banner.png">
        </div>
        <div class="banner">
            <div>
                <ul>
                    <li><a href="#"><img src="https://dummyimage.com/290x230/ebebeb/4d4d4d&text=230x230+product+image" alt=""></a></li>
                    <li><a href="#"><img src="https://dummyimage.com/290x230/ebebeb/4d4d4d&text=230x230+product+image" alt=""></a></li>
                    <li><a href="#"><img src="https://dummyimage.com/290x230/ebebeb/4d4d4d&text=230x230+product+image" alt=""></a></li>
                    <li><a href="#"><img src="https://dummyimage.com/290x230/ebebeb/4d4d4d&text=230x230+product+image" alt=""></a></li>
                </ul>
            </div>
        </div>
        <div>
            <div class="qna">
                <h3>お問い合わせ</h3>
                <a href="/music/board/qna-list.do">
                    <span>more</span>
                    <i class="fas fa-chevron-right"></i>
                </a>
                <ul>
                	<c:forEach var="ql" items="${QnalatestList}">
	                    <li>
	                        <a href="/music/board/qna-view.do?seq=${ ql.seq }">${ql.title}</a>
	                        <span>${ql.rdate}</span>
	                    </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="notice">
                <h3>お知らせ</h3>
                <a href="/music/board/notice-list.do">
                    <span>more</span>
                    <i class="fas fa-chevron-right"></i>
                </a>
                <ul>
                    <c:forEach var="nl" items="${NoticelatestList}">
	                    <li>
	                        <a href="/music/board/notice-view.do?seq=${ nl.seq }">${nl.title}</a>
	                        <span>${nl.rdate}</span>
	                    </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </section>
</main>
<%@ include file="./_footer.jsp" %>