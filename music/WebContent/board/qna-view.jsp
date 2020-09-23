<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../_header.jsp" %>
<link rel="stylesheet" href="/music/board/css/board_style.css">
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="qna-view">
    <section>
        <div class="content_box">
            <div class="title">
                <h4>お問い合わせ</h4>
            </div>
            <section>
                <form action="#">
                    <div class="write-content">
                        <table border="0">
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>カテゴリー</span>
                                </td>
                                <td>
                                    <p class="notice_view_title">${ qvo.cate }</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>題目</span>
                                </td>
                                <td>
                                    <p class="notice_view_title">${ qvo.title }</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>状態</span>
                                </td>
                                <td>
                                    <p class="notice_view_title">${ qvo.answer }</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>内容</span>
                                </td>
                                <td>
                                    <textarea name="qna_view_content" style="resize: none;" readonly>${ qvo.content }</textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <div class="listbtn">
                            <input type="button" name="listbtn" value="リスト" onClick="location.href='/music/board/qna-list.do'">
                        </div>
                        <c:if test="${member.uid == qvo.uid || member.grade == 2 }">
                        <div class="modifybtn">
                            <input type="button" name="modifybtn" value="修正">
                        </div>
                        <div class="deletebtn">
                            <input type="button" name="deletebtn" value="削除" onClick="location.href='/music/board/qna-delete.do?seq=${ qvo.seq }'">
                        </div>
                        </c:if>
                    </div>
                </form>
            </section>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>