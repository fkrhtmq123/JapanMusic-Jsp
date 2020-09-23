// 정규표현식
var regId    = /^[a-z]+[a-z0-9]{3,19}$/;    // 아이디 검사식

// 폼 검증에 사용할 상태 변수
var isUidOk = false;

// 아이디 중복 체크
$(document).ready(function(){
	var inputUid = $('input[name=uid]');
	var alreadyCheck = false;
	
	inputUid.blur(function(){
		if(alreadyCheck) {
			alreadyCheck = false;
			return false;
		}
		
		var tag = $(this);
		var uid = tag.val();
		var json = {"uid" : uid};
		
		if(regId.test(uid) == false) {
			alert('IDは半角英数字で最低４字以上にしてください。');
			tag.focus();
			alreadyCheck = true;
			return false;
		}
		
		$.ajax({
			url : '/music/user/checkUid.do?uid=' + uid,
			type : 'get',
			dataType : 'json',
			success : function(data){
				if(data.result == 1) {
					$('.resultuid').css('color', 'red').text('すでにあるIDです。');
					isUidOk = false;
				} else {
					$('.resultuid').css('color', 'green').text('使用できるIDです。');
					isUidOk = true;
				}
			}
		});
	});
});