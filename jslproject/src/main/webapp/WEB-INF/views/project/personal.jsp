<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<%@include file="common/header.jsp"%>
<head>
<link rel="stylesheet" href="/resources/assets/css/custom.css">
<script>
$(document)
.ready(
	
		function() {
			$("#passwdConfirmlabel").hide(); //region 영역 보이기
/* 			var MemberInsertForm = $("#MemberInsertForm");
	 */
/* 		/* 	$("#passwd").keydown(function() {
			      $('#passwdConfirmlabel').text('올바른 비밀번호를 입력해주세요');
			      $("#passwdConfirmlabel").show();
				})
 */
			
			$("#btn_register").on("click", function() {
				alert("일단 여기는 잘들어온다 이기 ")
				
			      if($("#passwd").val() != ($("#passwdConfirm").val())){ 
			 //     alert("비밀번호가 틀렸네용.");
				   $("#passwdConfirmlabel").show(); //region 영역 보이기
			      $("#passwd").val("");
			      $("#passwdConfirm").val("");
			      $("#passwd").focus();
			      return false;
			     }
				if($("#passwd").val() == ($("#passwdConfirm").val())){ 
					   $("#passwdConfirmlabel").hide();
					     }
				
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


<script>


<head>
<link rel="stylesheet" href="/resources/assets/css/custom.css">
<script>

function openTab(evt, tabName) {
	  var i, tabcontent, tabs;
	  tabcontent = document.getElementsByClassName("mypage-tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
	    tabcontent[i].style.display = "none";
	  }
	  tabs = document.getElementsByClassName("tabs");
	  for (i = 0; i < tabs.length; i++) {
	    tabs[i].className = tabs[i].className.replace(" active", "");
	  }
	  document.getElementById(tabName).style.display = "block";
	  evt.currentTarget.className += " active";
	}
	
</script>
</head>
<main> <!-- Hero Area Start-->
<div class="slider-area ">
	<div class="single-slider slider-height2 d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center">
						<h2>My Page</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--================Checkout Area =================-->
<section class="checkout_area section_padding">
	<div class="container">
		<div class="billing_details">
			<div class="row">
			<div class="col-lg-4">
					<div class="order_box">
					<form name="order">
					
						<h2>내 정보</h2>
						<ul class="list">
							<li ><a class="tabs active" onclick="openTab(event,'myInfo')">내 정보 관리<span style="cursor:pointer;"  id="rate_details"></span></a></li>
							<li ><a class="tabs" onclick="openTab(event,'myHistory')">구매내역조회<span style="cursor:pointer;"  id="rate_details"></span></a></li>
							<li ><a class="tabs" onclick="openTab(event,'myComments')">내가 쓴 글<span style="cursor:pointer;"  id="rate_details"></span></a></li>
							<li ><a class="tabs" onclick="openTab(event,'myInfo')">회원탈퇴<span style="cursor:pointer;"  id="rate_details"></span></a></li>
						</ul>
					</form>
					</div>
					
				</div>
				
				<!-- 내정보 관리 -->
				<div id="myInfo" class="col-lg-8 mypage-tabcontent" style="display:block">
					<h3>내 정보 관리</h3>
					<div class ="avatar_container"><a href="javascript:console.log('openpopup')"><img src="/resources/assets/img/comment/comment_1.png" alt="Avatar" class="avatar"></a></div>
					<form class="row contact_form" action="#" method="post"
						novalidate="novalidate">
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

						<div class="col-md-12 form-group p_star">
							<select class="country_select" id="Address_select">
								<option value="base">Base Address</option>
								<option value="recently">Recently Shipped Address</option>
								<option value="new">New Address</option>
							</select>
						</div>

				
						<div class="col-md-12 form-group p_star">
							<div class="input-group">
								<input style="background-color:white;" name="zipcode" type="text" class="form-control" placeholder="Zip Code" readonly>
								<span class="input-group-btn">
									<button id="zip_window" style="height:43px; font-size:3px; padding:4px;" class="btn_3" type="button" onclick="sample2_execDaumPostcode()">Search Zip code</button>
								</span>
							</div>
						</div>
		<a onclick="sample2_execDaumPostcode()"
					class="genric-btn info-border">우편번호 찾기</a>
						<div class="col-md-12 form-group p_star">
							<input type="text" placeholder="Address" class="form-control" name="address" />
						</div>
						<div class="col-md-12 form-group p_star">
							<input type="text" placeholder="Address Details" class="form-control" name="address_details" />
						</div>
						
						
						 <div class="col-md-12 form-group p_star">
							<select class="country_select">
								<option value="1">District</option>
								<option value="2">District</option>
								<option value="4">District</option>
							</select>
						</div>
						<div class="col-md-12 form-group">
							<input type="text" class="form-control" id="zip" name="zip"
								placeholder="Postcode/ZIP" />
						</div>

						<div class="col-md-12 form-group">
							<textarea class="form-control" name="message" id="message"
								rows="1" placeholder="Order Notes"></textarea>
						</div> 
						
					</form>

					<br>	
					<div class="cupon_area">
						<div class="check_title">
							<h2>
								Have a coupon? <a href="#">Click here to enter your code</a>
							</h2>
						</div>
						<input style="width:70%;" type="text" placeholder="Enter coupon code" /> <a
							class="tp_btn" href="#">Apply Coupon</a>
					</div>
				</div>
				 <!--/내정보관리  -->
				
				<!-- 구매내역조회 -->
				<div id="myHistory" class="col-lg-8 mypage-tabcontent">
					<h3 class="mb-30">구매내역</h3>
					<div class="mypage_table_wrap">
						<div class="progress-table">
							<div class="table-head">
								<div class="serial">주문번호</div>
								<div class="country">주문상품</div>
								<div class="visit">주문금액</div>
								<div class="percentage">주문날짜</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="country">asdasdf</div>
								<div class="visit">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="country">asdasdf</div>
								<div class="visit">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="country">asdasdf</div>
								<div class="visit">645032</div>
								<div class="percentage">asdfasdf</div>

							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="country">asdasdf</div>
								<div class="visit">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="country">asdasdf</div>
								<div class="visit">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="country">asdasdf</div>
								<div class="visit">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="country">asdasdf</div>
								<div class="visit">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							
						</div>
					</div>
				</div>
				<!-- /구매내역 조회 -->
				
				
				
				<!-- 내가 쓴 글 -->
				<div id="myComments" class="col-lg-8 mypage-tabcontent">
					<h3 class="mb-30">내가 쓴 글</h3>
					<div class="mypage_table_wrap">
						<div class="progress-table">
							<div class="table-head">
								<div class="serial">글번호</div>
								<div class="visit">제목</div>
								<div class="country">내용</div>
								<div class="percentage">날짜</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="visit">asdasdf</div>
								<div class="country">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="visit">asdasdf</div>
								<div class="country">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="visit">asdasdf</div>
								<div class="country">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="visit">asdasdf</div>
								<div class="country">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="visit">asdasdf</div>
								<div class="country">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="visit">asdasdf</div>
								<div class="country">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							<div class="table-row">
								<div class="serial">01</div>
								<div class="visit">asdasdf</div>
								<div class="country">645032</div>
								<div class="percentage">asdfasdf</div>
							</div>
							
							
						</div>
					</div>
				</div>
				<!-- /내가쓴글 -->
				
			</div>
		</div>
	</div>
	
	
	
    <!-- Modal -->
    
    <!-- rate_details -->
    <div class="modal fade" id="details_popup" tabindex="-1" role="dialog" aria-labelledby="zipcode_window" aria-hidden="true"
    style="margin:150px; padding:0px;">
        <div class="modal-dialog" id="details_dialog" style="max-width:100%;" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="Details_window">Details</h5>
                    <button type="button" style="cursor:pointer;" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="order_box">
                    	<h4>Product Details</h4>
                    	<ul class="list">
							
							<li><a>qqqq<br>￦ <i>123456</i>
								</a></li>
								
						</ul>
					</div>
                </div>
            </div>
        </div>
    </div>
    
 
</section>
<!--================End Checkout Area =================--> </main>

<%@include file="common/footer.jsp"%>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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