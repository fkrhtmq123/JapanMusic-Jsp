<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../_header.jsp" %>
<section class="header_image">
    <span>楽器はGalaxy...</span>
</section>
<main class="order-complete">
    <section>
        <div class="select">
            <h3>HOME > </h3><span>注文完了</span>
        </div>
        <div class="content_box">
            <div class="title">
                <h4>注文完了</h4>
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
                <div class="order_goods_complete">
                    <div>
                        <p>注文に成功しました。</p>
                    </div>
                </div>
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
                <div class="order_info">
                    <h4>注文者情報</h4>
                    <div>
                        <table border="0">
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    お名前
                                </th>
                                <td>木村雄二</td>
                            </tr>
                            <tr>
                                <th>電話番号</th>
                                <td>03-123-4567</td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    携帯電話
                                </th>
                                <td>090-1234-4567</td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    E-mail
                                </th>
                                <td>kimurayuuzi@yahoo.co.jp</td>
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
                                    <strong class="asterisk">*</strong>
                                    お名前
                                </th>
                                <td>木村雄二</td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    <span>住所</span>
                                </th>
                                <td>
                                    <div>
                                        123-4567<br>
                                        東京都足立区<br>
                                        ステーションビール 1-1023号
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <th>電話番号</th>
                                <td>03-123-4567</td>
                            </tr>
                            <tr>
                                <th>
                                    <strong class="asterisk">*</strong>
                                    携帯電話
                                </th>
                                <td>090-1234-4567</td>
                            </tr>
                            <tr>
                                <th>
                                    メモ
                                </th>
                                <td>元気かな？プレゼントだよ！</td>
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
                        <button onClick="parent.location.href='../index.html'">>メインページへ<</button>
                    </div>
                </div>
            </section>
        </div>
    </section>
</main>
<%@ include file="../_footer.jsp" %>