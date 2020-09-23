<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="search_password">
    <section>
        <div class="select">
            <h3>HOME > </h3><span>パスワードを探す</span>
        </div>
        <div class="content_box">
            <div>
                <h4>パスワードを探す</h4>
            </div>
            <div class="member_login">
                <form action="/music/user/search-password-result.do">
                    <div>
                        <input type="text" name="uid" placeholder="IDを入力してください">
                        <input type="text" name="name" placeholder="名前を入力してください">
                        <input type="text" name="email" placeholder="メールを入力してください">
                    </div>
                    <input type="submit" name="login_btn" value="探す">
                </form>
            </div>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>