<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="search_id">
    <section>
        <div class="select">
            <h3>HOME > </h3><span>IDを探す</span>
        </div>
        <div class="content_box">
            <div>
                <h4>IDを探す</h4>
            </div>
            <div class="member_login">
                <form action="/music/user/search-id-result.do">
                    <div>
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