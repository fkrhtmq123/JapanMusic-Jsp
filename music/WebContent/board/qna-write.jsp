<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="qna-write">
    <section>
        <div class="content_box">
            <div class="title">
                <h4>お問い合わせ入力</h4>
            </div>
            <section>
                <form action="/music/board/qna-write.do" method="post">
        			<input type="hidden" name="uid" value="${sessionScope.member.uid}" />
        			<input type="hidden" name="name" value="${sessionScope.member.name}" />
                    <div class="write-content">
                        <table border="0">
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>カテゴリー</span>
                                </td>
                                <td>
                                    <select name="cate">
                                        <option value="qval1">お問い合わせ内容</option>
                                        <option>[会員・情報]</option>
                                        <option>[注文・決済]</option>
                                        <option>[配送]</option>
                                        <option>[返品・AS]</option>
                                        <option>[商品・イベント]</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>題目</span>
                                </td>
                                <td>
                                    <input type="text" name="title">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>内容</span>
                                </td>
                                <td>
                                    <textarea name="content" style="resize: none;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <span>パスワード</span>
                                </td>
                                <td>
                                    <input type="password" name="pass">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="resultbtn">
                        <input type="submit" name="resultbtn" value=">内容入力<">
                    </div>
                </form>
            </section>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>