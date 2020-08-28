$(document).ready(function(){
    $('.slider > ul').bxSlider({
        auto: true,
        mode: 'fade',
        pager: false,
    });
});
$(function(){
    var checkbox = $('input[type=checkbox]');
    var nextBtn = $('.terms > section > .content_box > div:nth-child(3) > a');
    
    nextBtn.click(function(){
        var chkTerms = checkbox.eq(0).is(':checked');
        var chkPrivacy = checkbox.eq(1).is(':checked');
        
        if(chkTerms && chkPrivacy) {
            return true;
        } else {
            alert('동의 하셔야 합니다.');
            return false;
        }
    });
});
$(function(){
    var allcheck = $('input[name=allcheck]')

    //전체선택 체크박스 클릭 
    allcheck.click(function(){ 
        //만약 전체 선택 체크박스가 체크된상태일경우 
        if(allcheck.prop("checked")) { 
            //해당화면에 전체 checkbox들을 체크해준다 
            $("input[type=checkbox]").prop("checked",true); 
        // 전체선택 체크박스가 해제된 경우 } 
        } else { 
            //해당화면에 모든 checkbox들의 체크를해제시킨다. 
        $("input[type=checkbox]").prop("checked",false); 
        } 
    });
});