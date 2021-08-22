<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>


<%@include file="common/header.jsp"%>

<main> <!-- Hero Area Start-->
<div class="slider-area ">
	<div class="single-slider slider-height2 d-flex align-items-center">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="hero-cap text-center">
						<h2>Checkout</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--================Checkout Area =================-->
<section class="checkout_area section_padding">
	<div class="container">
	
	
		<!-- <div class="returning_customer">
			<div class="check_title">
				<h2>
					Returning Customer? <a href="#">Click here to login</a>
				</h2>
			</div>
			<p>If you have shopped with us before, please enter your details
				in the boxes below. If you are a new customer, please proceed to the
				Billing & Shipping section.</p>
			<form class="row contact_form" action="#" method="post"
				novalidate="novalidate">
				<div class="col-md-6 form-group p_star">
					<input type="text" class="form-control" id="name" name="name"
						value=" " /> <span class="placeholder"
						data-placeholder="Username or Email"></span>
				</div>
				<div class="col-md-6 form-group p_star">
					<input type="password" class="form-control" id="password"
						name="password" value="" /> <span class="placeholder"
						data-placeholder="Password"></span>
				</div>
				<div class="col-md-12 form-group">
					<button type="submit" value="submit" class="btn_3">log in
					</button>
					<div class="creat_account">
						<input type="checkbox" id="f-option" name="selector" /> <label
							for="f-option">Remember me</label>
					</div>
					<a class="lost_pass" href="#">Lost your password?</a>
				</div>
			</form>
		</div> -->
		
		
		



		<div class="billing_details">
			<div class="row">
				<div class="col-lg-8">
					<h3>Billing Details</h3>
					<form class="row contact_form" action="#" method="post"
						novalidate="novalidate">
						<div class="col-md-6 form-group p_star">
							<input style="background-color:white;" type="text" class="form-control" value="" id="first" name="name" value="" 
							placeholder="Name"/>
						</div>
						<div class="col-md-6 form-group p_star">
							<input type="text" style="background-color:white;" class="form-control" value="" id="first" name="name" 
							placeholder="tel"/>
						</div>

						<div class="col-md-6 form-group p_star">
							<input type="text" style="background-color:white;" class="form-control" value="" id="number" name="tel" 
							placeholder="Phone Number"/>
						</div>
						<div class="col-md-6 form-group p_star">
							<input type="text" style="background-color:white;" class="form-control" id="email" value=""
								name="compemailany" placeholder="Email Address" />
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
								<input style="background-color:white;" id="postcode" value="" name="postcode" type="text" class="form-control" placeholder="Zip Code" readonly>
								<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
									<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
								</div>
							</div>
						</div>

						<div class="col-md-6 form-group p_star">
							<input type="text" style="background-color:white;" placeholder="Address" class="form-control" value="" name="address" id="address_zip" readonly/>
						</div>
						<div class="col-md-6 form-group p_star">
							<input type="text" style="background-color:white;" placeholder="Address" class="form-control" value="" name="extra_address" id="extra_address" readonly/>
						</div>
						<div class="col-md-12 form-group p_star">
							<input type="text" style="background-color:white;" placeholder="Address Details" class="form-control" value="" name="address_details" id="details_address"/>
						</div>
						
						
						<!-- <div class="col-md-12 form-group p_star">
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
						</div> -->
						
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
				
				
				<div class="col-lg-4">
					<div class="order_box">
					<form name="order">
					
						<h2>Your Order</h2>
						<ul class="list">
							<li><a>Product <span style="cursor:pointer;" onclick="void(0)" id="rate_details">Details</span>
							</a></li>
							
							<c:forEach items="${inv_list}" var="s_list">
							<li><a style="width:100%; height:43px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;">${s_list.p_name}</a></li>
							<input type="hidden" value="720" name="price" >
							</c:forEach>
						</ul>
						<ul class="list list_2">
							<li><a>Subtotal <span>￦ ${param.sub_total}</span>
							<input type="hidden" value="${param.sub_total}" name="sub_total">
							</a></li>
							<li><a>Coupon <span>￦ <i>0</i></span>
							<input type="hidden" value="0" name="coupon">
							</a></li>
							<li><a>Shipping <span>￦ <i>2500</i></span>
							<input type="hidden" value="2500" name="shipping">
							</a></li>
							<li><a>Total <span>￦ <i></i></span>
							<input type="hidden" value="0" name="total">
							</a></li>
						</ul>
						<!-- <div class="payment_item">
							<div class="radion_btn">
								<input type="radio" id="f-option5" name="selector" /> <label
									for="f-option5">Check payments</label>
								<div class="check"></div>
							</div>
							<p>Please send a check to Store Name, Store Street, Store
								Town, Store State / County, Store Postcode.</p>
						</div>
						<div class="payment_item active">
							<div class="radion_btn">
								<input type="radio" id="f-option6" name="selector" /> <label
									for="f-option6">Paypal </label> <img
									src="img/product/single-product/card.jpg" alt="" />
								<div class="check"></div>
							</div>
							<p>Please send a check to Store Name, Store Street, Store
								Town, Store State / County, Store Postcode.</p>
						</div> -->
						<div class="creat_account">
							<input type="checkbox" id="f-option4" name="selector" /> <label
								for="f-option4">I’ve read and accept the </label> <a href="javascript:void(0)">terms & conditions</a>
						</div>
						<a class="btn_3" href="javascript:void(0)" id="paypal_consent">Proceed to Paypal</a>
					</form>
					</div>
					
				</div>
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
						
							<%-- <li><a>${inv_list.p_name}<br>￦ <i>${inv_list.single_rate}</i>
								</a></li>
							 --%>
						</ul>
					</div>
                </div>
            </div>
        </div>
    </div>

</section>
<!--================End Checkout Area =================--> </main>

<%@include file="common/footer.jsp"%>

<script>
	var address = $("input[type='text'][name='address']");
	var extra_address = $("input[type='text'][name='extra_address']");
	var address_details = $("input[type='text'][name='address_details']");
	var postcode = $("input[type='text'][name='postcode']");	// Page-zipcode
	
	var price = $("input[type='hidden'][name='price']");
	var total = $("input[name='total']");
	
	
	
	total.val(
			Number($("input[name='sub_total']").val()) - Number($("input[name='coupon']").val()) + Number($("input[name='shipping']").val()));
	total.closest("a").children("span").children("i").html(Number($("input[name='total']").val()));
	
	$(document).ready(function(){
		var tot_price = 0;
		for(var x=0; x<3; x++){
			tot_price += Number(price.eq(x).val());
		}
	});
	
		
	// modal action
	$("#close_window").click(function() {
    	$("input[type='text'][name='test']").val("");
    	$("#selected_zip").html("");
		postcode.val("");
        
    });
<<<<<<< HEAD
    
    

  	$("#zip_submit").click(function(){
    	if($("#selected_zip").html()==""){
    		alert("Please Select Zip Code");
    		return;
    	}

    	$("#zip_popup").modal("hide");
		zipcode.val(zip_code.val());
    	$("input[type='text'][name='test']").val("");
    	$("#selected_zip").html("");
    });
    
=======
>>>>>>> a7599b4a6f4694a60493ea5102f04b76c6e75ce7

    $("#rate_details").click(function() {
        $("#details_popup").modal("show");
    });
    
    
    
    // 간편결제(카카오페이)
    
    // Order_id = 주문번호
    $("#paypal_consent").click(function(){
    	if($("input:checkbox[name='selector']").is(":checked")==false){
    		alert("정보제공 동의를 체크해 주세요");
    		return;
    	}
    	
    	var IMP = window.IMP;
    	IMP.init('imp72568153');
    	var msg;
    	alert("토탈은 " + total.val());
    	
    	
    	IMP.request_pay({
    		pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'tt99999999999999999999994545454654999',	// PK
            name : '테스트 물건2',
            amount : total.val(),	// Price
            buyer_email : 'email',
            buyer_name : 'name',
            buyer_tel : 'phone',
            buyer_addr : address.val()+ " " + address_details.val(),
            buyer_postcode : postcode.val()
    	}, function(rsp){
    		if(rsp.success){
    			// 결제 성공시 - 페이지 호출 및 이동
    			jQuery.ajax({
                    url: "/project/payment",
                    type: 'POST',
                    dataType: 'json',
                    contentType:'application/json; charset=utf-8',
                    data: JSON.stringify({
                        "name" : rsp.name,
                    	"uid" : rsp.merchant_uid,
                    	"buyer_addr" : rsp.buyer_addr,
                    	"paid_amount" : rsp.paid_amount
					})
    		}).done(function(data){
    			alert("낄낄" + data);
    			if (data=="success") {
                    msg = '결제';
                    msg += '\n고유ID : ' + rsp.uid;
                    msg += '\n고유ID : ' + rsp.buyer_addr;
                    /* msg += '\n결제 금액 : ' + rsp.amount; */
                   
                    alert(msg);
                } else {
					alert("안돼");
                }
    			alert("?");
			});
    			// 성공 시 이동할 페이지
    			msg = '결제가 완료되었습니다.';
				msg += '\n고유ID : ' + rsp.merchant_uid;
				msg += '\n상점 거래ID : ' + rsp.name;
				msg += '\n결제 금액 : ' + rsp.paid_amount;
				msg += '\n주소 : ' + rsp.buyer_addr;
				msg += '\n카드 승인번호 : ';
    			alert(msg);
    			// 성공시 페이지 이동
    			location.href="cart";
    		} else{
    			msg = '결제에 실패했습니다';
				msg += '\n'+rsp.error_msg;
				msg += '\n결제 페이지로 이동합니다.';
				alert(msg);
				//실패시 페이지 이동
				window.replace();
    		}
    	});
    });
    
    
 // 주소 변경
	

    // 우편주소 찾기
 	// 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    
    $("#Address_select").change(function(){
		switch(this.value){
		case "base" :
			postcode.val(${inv_list.postcode});
			extra_address.val(${inv_list.extraaddress});
			address.val(${inv_list.address});
			address_details.val(${inv_list.detailaddress});
			return;
			
		case "recently" :
			postcode.val("2");
			extra_address.val("2");
			address.val("2");
			address_details.val("2");
			return;
			
		case "new" :
			postcode.val("");
			extra_address.val("");
			address.val("");
			address_details.val("");
			
			new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = '';
	                var extraAddr = '';
	
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우(R)
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    document.getElementById("extra_address").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extra_address").value = '';
	                }
	
	                document.getElementById('postcode').value = data.zonecode;
	                document.getElementById("address_zip").value = addr;
	                document.getElementById("details_address").focus();
	
	                element_layer.style.display = 'none';
	            },
	            width : '100%',
	            height : '100%',
	            maxSuggestItems : 5
	        }).embed(element_layer);
	
	        element_layer.style.display = 'block';
	
	        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
	        initLayerPosition();
        	return;
		default :
			alert("Error");
		}
	});
	
    $(window).resize(function (){ initLayerPosition(); });
    
    function initLayerPosition(){
        var width = 650;
        var height = 400;
        var borderWidth = 5;

        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';

        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
    
</script>

</body>
</html>