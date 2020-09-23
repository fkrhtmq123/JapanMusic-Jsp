<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="search_id_result">
    <section>
        <div class="select">
            <h3>HOME > </h3><span>IDを探す</span>
        </div>
        <div class="content_box">
            <div>
                <h4>IDを探す</h4>
            </div>
            <div class="member_login">
                <form action="#">
                    <div>
                        IDは
                        <span>${uid}</span>
                        です。
                    </div>
                    <input type="button" value="ログインページへ" onClick="location.href='/music/user/login.do'">
                </form>
            </div>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>