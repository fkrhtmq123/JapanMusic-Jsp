<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="order">
    <section>
        <div class="select">
            <h3>HOME > </h3><span>注文・決済</span>
        </div>
        <div class="content_box">
            <div class="title">
                <h4>注文・決済</h4>
                <div>
                    <label>
                        <span>01</span>
                        <span>カート</span>
                        <span><i class="fas fa-angle-right"></i></span>
                    </label>
                    <label>
                        <span>02</span>
                        <span>注文・決済</span>
                        <span><i class="fas fa-angle-right"></i></span>
                    </label>
                    <label>
                        <span>03</span>
                        <span>注文完了</span>
                    </label>
                </div>
            </div>
            <section>
                <div class="order_goods_check">
                    <table>
                        <tr>
                            <th>
                                商品情報
                            </th>
                            <th>
                                数量
                            </th>
                            <th>
                                単価(税込)
                            </th>
                            <th>
                                割引・ポイント
                            </th>
                            <th>合計</th>
                            <th>配送料</th>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <div class="pick_goods_image">
                                        <a href="#">
                                            <img src="/music/shop/img/violin_item_t1.png" alt="">
                                        </a>
                                    </div>
                                    <div class="pick_goods_title">
                                        <a href="#">
                                            バイオリン1.バイオリン1.バイオリン1.バイオリン1
                                        </a>
                                        <span>サイズ : 4/4</span>
                                    </div>
                                </div>
                            </td>
                            <td class="pick_goods_count">
                                <div>
                                    <strong>1</strong>
                                    <div>
                                        <a href="#">オプション・数量変更</a>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <p>198,000</p>
                            </td>
                            <td></td>
                            <td>
                                <p>198,000</p>
                            </td>
                            <td>無料配送</td>
                        </tr>
                    </table>
                </div>
                <div class="shopping">
                    <a href="#">
                        <&nbsp;ショッピングを続ける
                    </a>
                </div>
                <div class="order_price">
                    <div>
                        <ul>
                            <li>
                                <p>
                                    総
                                    <span>1</span>
                                    個の単価
                                </p>
                                <span>198,000</span>
                            </li>
                            <li><i class="fas fa-plus"></i></li>
                            <li>
                                <p>配送料</p>
                                <span>0</span>
                            </li>
                            <li><i class="fas fa-equals"></i></li>
                            <li>
                                <p>合計</p>
                                <span>198,000</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="use_terms">
                    <div>
                        <h3>利用規約</h3>
                        <textarea cols="30" rows="10" readonly></textarea>
                        <div>
                            <input type="checkbox" name="terms_box">
                            <span>
                                <p>(必須)</p>
                                利用規約に関する名用を確認し同意します。
                            </span>
                        </div>
                    </div>
                </div>
                <div class="order_info">
                    <h4>注文者情報</h4>
                    <div>
                        <table border="0">
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    お名前
                                </th>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <th>電話番号</th>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    携帯電話
                                </th>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    E-mail
                                </th>
                                <td><input type="email"></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="delivery_info">
                    <h4>配送情報</h4>
                    <div>
                        <table border="0">
                            <tr>
                                <th>
                                    お届け先確認
                                </th>
                                <td>
                                    <label>
                                        <input type="radio">
                                        <span>直接入力</span>
                                    </label>
                                    <label>
                                        <input type="radio">
                                        <span>注文者情報と同じ</span>
                                    </label>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    お名前
                                </th>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    <span>住所</span>
                                </th>
                                <td>
                                    <div>
                                        <input type="text" name="zip" placeholder="郵便番号を入力してください。">
                                        <input type="button" name="btnzip" value="検索">
                                        <input type="text" name="addr1">
                                        <input type="text" name="addr2" placeholder="詳細を入力してください。">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>電話番号</th>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    携帯電話
                                </th>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <th>
                                    メモ
                                </th>
                                <td><input type="text"></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="price_info">
                    <h4>決済情報</h4>
                    <div>
                        <table>
                            <tr>
                                <th>合計金額</th>
                                <td>
                                    <span>198,000</span>
                                </td>
                            </tr>
                            <tr>
                                <th>配送料</th>
                                <td>
                                    <span>0</span>
                                </td>
                            </tr>
                            <tr>
                                <th>割引・ポイント</th>
                                <td>
                                    <div>
                                        <label>
                                            <i class="fas fa-minus-circle"></i>
                                            <p>
                                                割引 : (-)
                                                <span>0</span>
                                            </p>
                                        </label>
                                    </div>
                                    <div>
                                        <p>
                                            (商品
                                            <span>0</span>,
                                        </p>
                                        <p>
                                            会員
                                            <span>0</span>,
                                        </p>
                                        <p>
                                            クーポン
                                            <span>0</span>)
                                        </p>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>合計決済金額</th>
                                <td>
                                    <span>198,000</span>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="price_means">
                    <h4>決済手段選択・決済</h4>
                    <div>
                        <table border="0">
                            <tr>
                                <th>決済手段</th>
                                <td>
                                    <label>
                                        <input type="radio">
                                        <span>口座振込</span>
                                    </label>
                                    <label>
                                        <input type="radio">
                                        <span>クレジットカード</span>
                                    </label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="final_order_price">
                    <div>
                        <ul>
                            <li>
                                <p>合計決済金額</p>
                            </li>
                            <li>
                                <span>198,000</span>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="order_button">
                    <div>
                        <input type="checkbox">
                        <span>
                            <p>(必須)</p>
                            購入する商品の決済情報を確認し、購入手続きに同意します。
                        </span>
                    </div>
                    <div>
                        <input type="button" value="決済">
                    </div>
                </div>
            </section>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>