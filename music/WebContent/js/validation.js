$(function(){
	$('.register form').submit(function(){
		
		// ID確認
		if(!isUidOk) {
			alert('IDを再確認してください。')
			return false;
		}
		// パスワード確認
		if(!isPassOk) {
			alert('パスワードを再確認してください。')
			return false;
		}
		// メール確認
		if(!isEmailOk) {
			alert('メールを再確認してください。')
			return false;
		}
		
		// 最終データ確認完了
		return true;
	});
});