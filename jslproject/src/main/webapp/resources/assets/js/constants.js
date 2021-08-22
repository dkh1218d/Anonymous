
const googleClientID = "40180389921-f5esnb5f09ei6bnuj1q0e13h8rqs9v7p.apps.googleusercontent.com";
const naverClientID =  "EcE1A7nHyhzu0hV4vKU5";
const kakaoKey = "a1e8ec98d3aff08da4c22abc863f7836";
const naverCallbackURL = "http://localhost:8089/naver/login";
var auth2;

//NAVER
var naverLogin = new naver.LoginWithNaverId(
	{
		clientId: naverClientID,
		callbackUrl: naverCallbackURL,
		isPopup: false, 
		loginButton: {color: "green", type: 3, height: 60} 
	}
);
	
var naverLogin2 = new naver.LoginWithNaverId(
		{
			clientId: naverClientID,
			callbackUrl: naverCallbackURL,
			isPopup: false,
			callbackHandle: true
		}
	);	

//KAKAO
function kakaoCheck(){
	Kakao.init(kakaoKey);
	Kakao.Auth.login({
		  success: function(res) {
			  Kakao.API.request({
				  url:'/v2/user/me',
				  success: function(obj){
					    location.href="/kakao/login?email="+obj.kakao_account.email+"&id="+obj.id+"&access="+res.access_token+"&nickname="+obj.kakao_account.profile.nickname;
				  }
			  })
		  },
		  fail: function(err){
			  alert("asdf"+err);
		  }
		});
}



//GOOGLE

/**
 * Initializes the Sign-In client.
 */
 
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
        /**
         * Retrieve the singleton for the GoogleAuth library and set up the
         * client.
         */
        auth2 = gapi.auth2.init({
            client_id: googleClientID
        });  
    });
};


//http://localhost:8089/kakao/login?email=jaehoonlee1994@hotmail.com&id=1436844453&phone=undefined&access=Um8bTOmKc4q0wUh5bjmKxLeD06Gv4a_rDogYNgopb1QAAAFzvYlkXA
//&nickname={"id":1436844453,"connected_at":"2020-07-29T08:36:21Z","properties":{"nickname":"%EC%9D%B4%EC%9E%AC%ED%9B%88"},"kakao_account":{"profile_needs_agreement":false,"profile":{"nickname":"%EC%9D%B4%EC%9E%AC%ED%9B%88"},"has_email":true,"email_needs_agreement":false,"is_email_valid":true,"is_email_verified":true,"email":"jaehoonlee1994@hotmail.com"}}