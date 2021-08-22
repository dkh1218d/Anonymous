<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
   

<html>

<head>

<meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=ege"/>

<meta nmae="viewport" content="user-scalable=no,inital-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,width=device-width">

<title>:: Custom Login Demo - Kakao JavaScript SDK ::</title>

<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript">

    document.addEventListener("DOMContentLoaded", function() {
        // @details 카카오톡 Developer API 사이트에서 발급받은 JavaScript Key
        Kakao.init( "53b85d1041681f1b5cf200d3a7e46ee1" );
        // @breif 카카오 로그인 버튼을 생성합니다.
        Kakao.Auth.createLoginButton({
              container : "#kakao-login-btn"
            , success : function( authObj ) {
                // console.log( authObj );
		    alert(JSON.stringify(authObj))
                Kakao.API.request({
                	  url: '/v2/user/me'
                    , success : function( res ) {
                        // console.log( res );
                        // @breif 아이디
                        document.getElementById( "kakaoIdentity" ).innerHTML = res.id;
                        alert(res.id)
                        // @breif 닉네임
                        document.getElementById( "kakaoNickName" ).innerHTML = res.properties.nickname;
                        // @breif 프로필 이미지
                        document.getElementById( "kakaoProfileImg" ).src = res.properties.profile_image;
                        // @breif 썸네일 이미지
                        document.getElementById( "kakaoThumbnailImg" ).src = res.properties.thumbnail_image;
                /*  		sex.action = "/sex";
                 		sex.sex1.value = res.id;
                        sex.submit(); */
                    
                    }, fail : function( error ) {
                        alert( JSON.stringify( error ) );
                    }
                });
            }
            , fail : function( error ) {
                alert( JSON.stringify( error ));
            }
        });
    });
</script>

</head>

<body>

<script>

function logout(){

Kakao.Auth.logout(
function(obj) {
if(obj==true){}else{}
alert("로그아웃 되셨습니다")
 location.href='http://localhost:8080/kakao';
 }
);
}
</script>

	<a href="javascript:logout()">로그아웃</a>
    <div>카카오 아이디 : <span id="kakaoIdentity"></span></div>

    <div>닉네임 : <span id="kakaoNickName"></span></div>

    <div>프로필 이미지 : <img id="kakaoProfileImg" src=""/></div>

    <div>썸네일 이미지 : <img id="kakaoThumbnailImg" src=""/></div>

    <br/>
<form name="sex" method="post">
<input type="text" name="sex1">

</form>
    <a id="kakao-login-btn"></a>

</body>

</html> 