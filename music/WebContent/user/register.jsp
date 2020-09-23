<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="register">
    <section>
        <div class="select">
            <h3>HOME > 新規登録 > </h3><span>情報入力</span>
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
                <div>
                    <h5>基本情報</h5>
                    <label>
                        <strong class="asterisk">*</strong>
                        <span>表示は必ず入力してください。</span>
                    </label>
                </div>
                <form action="/music/user/register-complete.do" method="POST">
                    <div class="member_register">
                        <table border="0">
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>ID</span>
                                </td>
                                <td>
                                    <input type="text" name="uid" placeholder="IDを入力してください。">
                                    <span class="resultuid"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>パスワード</span>
                                </td>
                                <td>
                                    <input type="password" name="pass1" placeholder="パスワードを入力してください。">
                                    <span class="resultpass1"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>パスワード確認</span>
                                </td>
                                <td>
                                    <input type="password" name="pass2" placeholder="もう一度入力してください。">
                                    <span class="resultpass2"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>お名前</span>
                                </td>
                                <td>
                                    <input type="text" name="name" placeholder="お名前を入力してください。">
                                    <span class="resultname"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>E-mail</span>
                                </td>
                                <td>
                                    <input type="email" name="email" placeholder="メールを入力してください。">
                                    <span class="resultemail"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>電話番号</span>
                                </td>
                                <td>
                                    <input type="text" name="hp" placeholder="電話番号を入力してください。">
                                    <span class="resulthp"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>携帯電話</span>
                                </td>
                                <td>
                                    <input type="text" name="tel" placeholder="携帯電話を入力してください。">
                                    <span class="resulthp"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <strong class="asterisk">*</strong>
                                    <span>住所</span>
                                </td>
                                <td>
                                    <input type="text" name="zip" placeholder="郵便番号を入力してください。" maxlength="8" onKeyUp="AjaxZip3.zip2addr(this,'','addr1','addr2');">
                                    <input type="text" name="addr1">
                                    <input type="text" name="addr2" placeholder="詳細を入力してください。">
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="resultbtn">
                        <input type="submit" name="resultbtn" value=">会員情報を登録する<">
                    </div>
                </form>
            </section>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>