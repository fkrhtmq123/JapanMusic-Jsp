<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../_header.jsp" %>
<script>
    $(document).ready(function(){
        $('#search').click(function(){
            var k = $('#keyword').val();

            $("#notice-table > tbody > tr").hide();
            var temp = $("#notice-table > tbody > tr > td:nth-child(5n+2):contains('" + k + "')");

            $(temp).parent().show();
        })
    })
</script>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="notice">
    <section class="content_title">
        <div class="notice_title">
            <h3>お知らせ</h3>
        </div>
    </section>
    <section class="content_box">
        <table id="notice-table">
            <tr>
                <th>番号</th>
                <th>題目</th>
                <th>日付</th>
                <th>名前</th>
                <th>回数</th>
            </tr>
            <c:forEach var="vo" items="${ notices }">
	            <c:set var="listCount" value="${listCount = listCount - 1}"/>
            	<c:if test="${ listCount > 0 }">
		            <tr>
	                	<td>${listCount}</td>
		                <td>
		                    <a href="/music/board/notice-view.do?seq=${ vo.seq }">${ vo.title }</a>
		                </td>
		                <td>${ vo.rdate }</td>
		                <td>${ vo.name }</td>
		                <td>0</td>
		            </tr>
		        </c:if>
            </c:forEach>
        </table>
        <c:if test="${ member.grade > 1 }">
	        <div class="notice_write_btn">
	            <a href="/music/board/notice-write.do">入力</a>
	        </div>
        </c:if>
        <span class="paging_btn">
            <ul>
            	<c:if test="${ groupStart > 1 }">
	                <li>
	                    <a href="/music/board/notice-list.do?pg=${groupStart-1}">이전</a>
	                </li>
                </c:if>
                <c:forEach var="i" begin="${groupStart}" end="${groupEnd}">
	                <li>
	                    <a href="/music/board/notice-list.do?pg=${i}" class="num ${currentPage==i ? 'on':''}">${i}</a>
	                </li>
                </c:forEach>
                <c:if test="${ groupEnd < lastPage }">
	                <li>
	                    <a href="/music/board/notice-list.do?pg=${groupEnd+1}">다음</a>
	                </li>
                </c:if>
            </ul>
        </span>
        <div class="notice_search">
            <form action="#" method="get">
                <div>
                    <select>
                        <option value="title">題目</option>
                        <option value="content">内容</option>
                        <option value="name">名前</option>
                    </select>
                    <input type="text" id="keyword">
                </div>
                <input type="submit" id="search" value="検索">
            </form>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>