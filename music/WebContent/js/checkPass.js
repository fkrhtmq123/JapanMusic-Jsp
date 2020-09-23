// 정규표현식
var regPw    = /^[a-z0-9_-]{6,18}$/;         // 비밀번호 검사식

var isPassOk = false;

$(function(){
	var inputPass = $('input[name=pass1]')
	var alreadyCheck = false;
	
	inputPass.blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var pass = tag.val();
		var json = {"pass":pass};
		
		if(regPw.test(pass) == false) {
			alert('パスワードは半角英数字で最低６字以上にしてください。');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		// 모든 검증이 통과되고 통신 시작
		$.ajax({
			url:'/music/user/checkPass.do?pass=' + pass,
			type:'get',
			dataType:'json',
			success:function(data){
				if(data.result != 1) {
					$('.resultpass1').css('color', 'green').text('使用できるパスワードです。');
					isPassOk = true;
				} 
			}
		});
	});
	
	// 비밀번호 일치여부 확인
	$('input[name=pass2]').focusout(function(){
		var pass1 = $('input[name=pass1]').val();
		var pass2 = $('input[name=pass2]').val();
		
		if(pass1 != pass2){
			$('.resultpass2').css('color', 'red').text('パスワードが一致しません。');
			isPassOk = false;
		}else{
			$('.resultpass2').css('color', 'green').text('パスワードが一致します。');
			isPassOk = true;
		}
	});
});