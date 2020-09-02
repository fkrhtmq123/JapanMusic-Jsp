<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="notice-view">
    <section>
        <div class="content_box">
            <div class="title">
                <h4>お知らせ</h4>
            </div>
            <section>
                <form action="#">
                    <div class="write-content">
                        <table border="0">
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>題目</span>
                                </td>
                                <td>
                                    <p class="notice_view_title"></p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>内容</span>
                                </td>
                                <td>
                                    <textarea name="notice_view_content" style="resize: none;" readonly></textarea>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <div class="listbtn">
                            <input type="button" name="listbtn" value="リスト">
                        </div>
                        <div class="modifybtn">
                            <input type="button" name="modifybtn" value="修正">
                        </div>
                        <div class="deletebtn">
                            <input type="button" name="deletebtn" value="削除">
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>