<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="terms">
    <section>
        <div class="select">
            <h3>HOME > 新規登録 > </h3><span>会員登録規約同意</span>
        </div>
        <div class="content_box">
            <div class="title">
                <h4>新規登録</h4>
                <div>
                    <label>
                        <span>01</span>
                        <span>会員登録規約同意</span>
                        <span><i class="fas fa-angle-right"></i></span>
                    </label>
                    <label>
                        <span>02</span>
                        <span>情報入力</span>
                        <span><i class="fas fa-angle-right"></i></span>
                    </label>
                    <label>
                        <span>03</span>
                        <span>登録完了</span>
                    </label>
                </div>
            </div>
            <div class="member_terms">
                <div>
                    <h2>会員登録規約同意</h2>
                </div>
                <div class="privacy">
                    <input type="checkbox" name="box">
                    <div>
                        <span>(必須)</span>
                        <em>プライバシーポリシー</em>
                    </div>
                    <textarea name="privacy" style="resize: none" readonly></textarea>
                </div>
                <div class="terms">
                    <input type="checkbox" name="box">
                    <div>
                        <span>(必須)</span>
                        <em>会員規約</em>
                    </div>
                    <textarea name="terms" style="resize: none" readonly></textarea>
                </div>
                <div>
                    <input type="checkbox" name="allcheck">
                    <span>すべて同意します。<p>(選択項目も含まれます。)</p></span>
                </div>
            </div>
            <div>
                <a href="/music/user/register.do">>次へ<</a>
            </div>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>