$(function(){
	$('input:submit[id="user_btn"]').click(function(){//確認画面ボタンを押した時
		if(!input_check()){
			return false; //イベントの処理を中断
    }
  });
});
function input_check(){
  // var result:resultという変数を定義
  var result = true; //変数resultに正しい値が格納された時
  // 入力エラー文をリセット
  $("#name_error").empty();
  $("#tel_error").empty();
  $("#mail_error").empty();
  // 入力内容セット
  var namea = $("#name").val();
  var tela = $("#tel").val();
  var mailla = $("#mail").val();
// 入力内容チェック
  //名前
  if(namea == ""){
    $("#name_error").html("　*名前は必須です。");
    result = false;
  }else if(namea.match(/[0-9]/)){
    $("#name_error").html("　*名前に半角数字を含んではいけません。");
    result = false;//イベントの処理を中断
  }
  //電話番号
  if(tela == ""){
    $("#tel_error").html("　*電話番号は必須です。");
    result = false;
  }else if(!tela.match(/^(0[5-9]0[0-9]{8}|0[1-9][1-9][0-9]{7})$/)){
    $("#tel_error").html("　*10桁または11桁の半角数字で入力お願いします。");
    result = false;//イベントの処理を中断
  }

  // メールアドレス
  if(mailla == ""){
    $("#mail_error").html("　*メールアドレスは必須です。");
    result = false;
  }else if(!mailla.match( /^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$/)){
    $("#mail_error").html("　*メールアドレスが正しくありません。");
    result = false;
  }
  return result;
};




