<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="register_complete">
    <section>
        <div class="select">
            <h3>HOME > 新規登録 > </h3><span>登録完了</span>
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
            <section>
                <div class="member_result">
                    <p>会員登録が完了しました。<i class="far fa-smile"></i></p>
                    <span>~メインページへお戻りください。~</span>
                </div>
                <button onClick="parent.location.href='/music'">>メインページへ<</button>
            </section>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>