<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="qna">
    <section class="content_title">
        <div class="qna_title">
            <h3>お問い合わせ</h3>
        </div>
    </section>
    <section class="content_box">
        <table>
            <tr>
                <th>日付</th>
                <th>カテゴリー</th>
                <th>題目</th>
                <th>名前</th>
                <th>状態</th>
            </tr>            
            <c:forEach var="qvo" items="${ qnas }">
            	<c:set var="listCount" value="${listCount = listCount - 1}"/>
            	<c:if test="${ listCount > 0 }">
		            <tr>
		                <td>${ qvo.rdate }</td>
		                <td>${ qvo.cate }</td>
		                <td>
		                    <a href="/music/board/qna-view.do?seq=${ qvo.seq }">
			                    <c:if test="${ qvo.pass != null }">
			                    	<i class="fas fa-lock"></i>
			                    </c:if>
		                    	${ qvo.title }
		                    </a>
		                </td>
		                <td>${ qvo.name }</td>
		                <td>${ qvo.answer }</td>
		            </tr>
		         </c:if>
            </c:forEach>
        </table>
        <div class="qna_write_btn">
            <a href="/music/board/qna-write.do">入力</a>
        </div>
        <span class="paging_btn">
            <ul>
            	<c:if test="${ groupStart > 1 }">
	                <li>
	                    <a href="/music/board/qna-list.do?pg=${groupStart-1}">이전</a>
	                </li>
                </c:if>
                <c:forEach var="i" begin="${groupStart}" end="${groupEnd}">
	                <li>
	                    <a href="/music/board/qna-list.do?pg=${i}" class="num ${currentPage==i ? 'on':''}">${i}</a>
	                </li>
                </c:forEach>
                <c:if test="${ groupEnd < lastPage }">
	                <li>
	                    <a href="/music/board/qna-list.do?pg=${groupEnd+1}">다음</a>
	                </li>
                </c:if>
            </ul>
        </span>
        <div class="qna_search">
            <form action="#">
                <div>
                    <select>
                        <option value="val1">題目</option>
                        <option value="val2">内容</option>
                        <option value="val3">名前</option>
                    </select>
                    <input type="text">
                </div>
                <input type="submit" value="検索">
            </form>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>