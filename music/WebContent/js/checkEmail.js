// 정규표현식
var regEmail    = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

//최종 점검을 위한 상태변수 선언
var isEmailOk = false;

$(document).ready(function(){
	var alreadyCheck = false;
	var inputEmail = $('input[name=email]');
	
	inputEmail.blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var email = tag.val();
		var json = {"email":email};
		
		if(regEmail.test(email) == false) {
			alert('@を含めてメール書いてください。');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		// 모든 검증이 통과되고 통신 시작
		$.ajax({
			url:'/music/user/checkEmail.do?email=' + email,
			type:'get',
			dataType:'json',
			success:function(data){
				if(data.result == 1) {
					$('.resultemail').css('color', 'red').text('すでに使用中のメールです。');
					isEmailOk = false;
				} else {
					$('.resultemail').css('color', 'green').text('使用できるメールです。');
					isEmailOk = true;
				}
			}
		});
	});
});