<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<meta name="google-signin-client_id" content="40180389921-f5esnb5f09ei6bnuj1q0e13h8rqs9v7p.apps.googleusercontent.com">
<%@include file="common/header.jsp" %>
<%-- 
<%@include file="common/inventory.jsp" %> --%>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="/resources/assets/js/kakao.js"></script>
<script src="/resources/assets/js/constants.js">
</script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script src="https://apis.google.com/js/platform.js?onload=ginit" async defer></script>

                                
<script>
var auth2;
function googlesignin(){
	 auth2.signIn()
	 .then((user) => {
		 location.href="/google/login?id_token="+user.getAuthResponse().id_token;
	 })
	 .catch((error) => {
		 console.log(error);
	 })
}
function ginit() {
   gapi.load('auth2', function(){
	   auth2 = gapi.auth2.init({
           client_id: '40180389921-f5esnb5f09ei6bnuj1q0e13h8rqs9v7p.apps.googleusercontent.com'
	   });  
   });
};
   
  </script>
  	

    <main>
    <body>

        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Login</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================login_part Area =================-->
        <section class="login_part section_padding ">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_text text-center">
                            <div class="login_part_text_iner">
                                <h2>New to our Shop?</h2>
                                <p>There are advances being made in science and technology
                                    everyday, and a good example of this is the</p>
                                    <!-- <div id="signin-button"><a href="javascript:signin()"><img src="/resources/assets/img/googlebutton.png" width="285.44" height="68"></a></div> -->
                                   <div><a href="javascript:googlesignin()"><img src="/resources/assets/img/googlebutton.png" width="285.44" height="68"></a></div>
                                    <br>
                                <div id="naverIdLogin"></div>
                           
                                    <script type="text/javascript">
	 var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: naverClientID,
			callbackUrl: naverCallbackURL,
			isPopup: false, 
			loginButton: {color: "green", type: 3, height: 60} 
		}
	);
	
	
	naverLogin.init();
</script>
<br>
                                <a href="javascript:kakaoCheck();"><img src="/resources/assets/img/kakao_login_large_narrow.png" width="277.44" height="60"></a>
                                
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_form">
                            <div class="login_part_form_iner">
                                <h3>Welcome Back ! <br>
                                    Please Sign in now</h3>
                                <form class="row contact_form" action="#" method="post" novalidate="novalidate">
                                    <div class="col-md-12 form-group p_star">
                                        <input type="text" class="form-control" id="name" name="name" value=""
                                            placeholder="Username">
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <input type="password" class="form-control" id="password" name="password" value=""
                                            placeholder="Password">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <div class="creat_account d-flex align-items-center">
                                            <input type="checkbox" id="f-option" name="selector">
                                            <label for="f-option">Remember me</label>
                                        </div>
                                        <button type="submit" value="submit" class="btn_3">
                                            log in
                                        </button>
                                        <button type="button" class= "btn_3" id="btn_register">register</button>
                                        <a class="lost_pass" href="#">forget password?</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================login_part end =================-->
        </body>
    </main>

<script>
$(document).ready(
		function() {
			$("#btn_register").on("click", function() {
				self.location = "/member/register";
			});
		});
</script>



   
     <%@include file="common/footer.jsp" %>
</body>
</html>