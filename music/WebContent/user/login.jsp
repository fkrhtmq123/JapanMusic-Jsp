<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="login">
    <section>
        <div class="select">
            <h3>HOME > </h3><span>ログイン</span>
        </div>
        <div class="content_box">
            <div>
                <h4>ログイン</h4>
            </div>
            <div class="member_login">
                <form action="/music/user/login.do" method="post">
                    <div>
                        <input type="text" name="uid" placeholder="IDを入力してください">
                        <input type="password" name="pass" placeholder="パスワードを入力してください">
                    </div>
                    <input type="submit" name="login_btn" value="ログイン">
                </form>
                <div>
                    <ul>
                        <li><a href="/music/user/terms.do">新規登録</a></li>
                        <li>
                            <a href="/music/user/search-id.do">
                                IDを忘れた方は<br>こちら
                            </a>
                        </li>
                        <li>
                            <a href="/music/user/search-password.do">
                                	パスワードを忘れた方は<br>こちら
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>