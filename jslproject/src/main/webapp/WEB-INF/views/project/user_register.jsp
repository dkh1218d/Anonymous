<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@include file="common/header.jsp"%>

<script type="text/javascript">
//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
var idck = 0;
$(function() {
    //idck 버튼을 클릭했을 때 
  	 $("#userid").keyup(function(){	
        
        //userid 를 param.
        var userid =  $("#userid").val(); 
        if(userid == null || userid == ''){
        	alert("아이디를 입력해주세요");
        	return;
        }
        $.ajax({
            async: true,
            type : 'POST',
            data : userid,
            url : "checkSignup",
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success : function(data) {
                if (data.cnt > 0) {
                	 $("#useridcheck").show();
                  //  alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
                //    $("#userid").focus();
                    
                
                } else {
                //    alert("사용가능한 아이디입니다.");
                    //아이디가 존제할 경우 빨깡으로 , 아니면 파랑으로 처리하는 디자인
                   $("#useridcheck").hide();
                //    $("#passwd").focus();
                    //아이디가 중복하지 않으면  idck = 1 
                    idck = 1;
                    
                }
            },
            error : function(error) {
                
                alert("error : " + error);
            }
        });
    });
});
 
 
</script>


<script>
$(document)
.ready(
	
		function() {
			$("#useridcheck").hide(); 
			$("#passwdConfirmlabel").hide(); //region 영역 보이기
/* 			var MemberInsertForm = $("#MemberInsertForm");
	 */
/* 		/* 	$("#passwd").keydown(function() {
			      $('#passwdConfirmlabel').text('올바른 비밀번호를 입력해주세요');
			      $("#passwdConfirmlabel").show();
				})
 */
 
 $("#passwdConfirm").keyup(function(){	
	 if($("#passwd").val() != ($("#passwdConfirm").val())){ 
		 //     alert("비밀번호가 틀렸네용.");
			   $("#passwdConfirmlabel").show(); //region 영역 보이기
		  //   $("#passwd").val("");
		 //     $("#passwdConfirm").val("");
		 //     $("#passwd").focus();
		      return false;
		     }
			if($("#passwd").val() == ($("#passwdConfirm").val())){ 
				   $("#passwdConfirmlabel").hide();
				     }
	 
 });
	 $("#passwd").keyup(function(){	
		 if($("#passwd").val() != ($("#passwdConfirm").val())){ 
			 //     alert("비밀번호가 틀렸네용.");
				   $("#passwdConfirmlabel").show(); //region 영역 보이기
			  //   $("#passwd").val("");
			 //     $("#passwdConfirm").val("");
			 //     $("#passwd").focus();
			      return false;
			     }
				if($("#passwd").val() == ($("#passwdConfirm").val())){ 
					   $("#passwdConfirmlabel").hide();
					     }
		 
	 });
			
			$("#btn_register").on("click", function() {
				alert("일단 여기는 잘들어온다 이기 ")
			     
							
				 $( "#MemberInsertForm" ).submit();
			
		
			});
			
			$("#btn_cancel").on("click", function() {
				alert("Rest ")	
				
		           $('form').each(function() {
		                this.reset();
		            });
			});
		});
</script>


<main>
	<!-- Hero Area Start-->
	<div class="slider-area ">
		<div class="single-slider slider-height2 d-flex align-items-center">
			<div class="container">
				<div class="row">
					<div class="col-xl-12">
						<div class="hero-cap text-center">
							<h2>Register</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================Checkout Area =================-->
	<section class="checkout_area section_padding">
		<div class="container">
			<div class="returning_customer">
				<div class="check_title">
					<h2>
						Register
						<!--  <a href="#">Click here to login</a> -->
					</h2>
				</div>
				<p>If you have shopped with us before, please enter your details
					in the boxes below. If you are a new customer, please proceed to
					the Billing & Shipping section.</p>
				<form method="post" name="MemberInsertForm" id="MemberInsertForm"
					action="/member/register">
					<div class="col-md-6 form-group p_star">
						<input type="text" class="form-control" id="userid" name="userid"
							value="" placeholder="userid" />
<!-- <button type="button" id="idck" class="btn btn-default">중복확인</button> -->
<p id="useridcheck">이미존재하는 아이디입니다..</p>

					</div>

					<div class="col-md-6 form-group p_star">
						<input type="text" class="form-control" id="username"
							name="username" value="" placeholder="Username" />
					</div>
					<div class="col-md-6 form-group p_star">
						<input type="text" class="form-control" id="email" name="email"
							value="" placeholder="Email" />
					</div>

					<div class="col-md-6 form-group p_star">
						<input type="password" class="form-control" id="passwd"
							name="passwd" value="" placeholder="passwd" />
					</div>
					<div class="col-md-6 form-group p_star">
						<input type="password" class="form-control" name="passwdConfirm"
							value="" placeholder="password Confrim" id="passwdConfirm" />
						<p id="passwdConfirmlabel">비밀번호가 일치하지 않습니다.</p>
					</div>
			</div>
			<!-- 		<div class="col-md-3 form-group p_star">
					<input type="password"  name="tel1" value="" placeholder="password Confrim"  />
					-<input type="password" class="form-control" name="tel1" value="" placeholder="password Confrim"  />-
					<input type="password" class="form-control" name="tel1" value="" placeholder="password Confrim"  />
				</div> -->
			<br>
			<div class="button-group-area mt-10">
				<div class="col-md-3 form-group p_star">
					<input type="text" id="sample2_postcode" name="postcode"
						class="form-control" placeholder="우편번호">
				</div>
				<a onclick="sample2_execDaumPostcode()"
					class="genric-btn info-border">우편번호 찾기</a>
			</div>
			<!-- 
<input type="button" onclick="sample2_execDaumPostcode()" value="우편번호 찾기"><br> -->
			<div class="col-md-4 form-group p_star">
				<input type="text" id="sample2_address" class="form-control"
					name="address" placeholder="주소"><br>
			</div>
			<div class="col-md-5 form-group p_star">
				<input type="text" id="sample2_detailAddress" class="form-control"
					name="detailaddress" placeholder="상세주소"> <input type="text"
					id="sample2_extraAddress" class="form-control" name="extraaddress"
					placeholder="참고항목"> <input type="hidden" name="tel"
					value="010-1234-1234">
			</div>
			</form>
			<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
			<div id="layer"
				style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
				<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
					id="btnCloseLayer"
					style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
					onclick="closeDaumPostcode()" alt="닫기 버튼">
			</div>




			<div class="col-md-12 form-group">
				<button type="button" id="btn_register" class="btn_3">
					register</button>
				<button type="button" id="btn_cancel" class="btn_3">cancel</button>
			</div>


		</div>

	</section>
	<!--================End Checkout Area =================-->
</main>

<%@include file="common/footer.jsp"%>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample2_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample2_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample2_detailAddress").focus();

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 400; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>
</body>
</html>