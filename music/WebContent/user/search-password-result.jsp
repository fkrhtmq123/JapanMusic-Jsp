<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="search_password_result">
    <section>
        <div class="select">
            <h3>HOME > </h3><span>パスワードを探す</span>
        </div>
        <div class="content_box">
            <div>
                <h4>パスワードを探す</h4>
            </div>
            <div class="member_login">
                <form action="#">
                    <div>
                        	パスワードは
                        <span>${pass}</span>
                        です。
                    </div>
                    <input type="button" value="ログインページへ">
                </form>
            </div>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>