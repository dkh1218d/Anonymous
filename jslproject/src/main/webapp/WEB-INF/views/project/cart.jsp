<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<%@include file="common/header.jsp" %>

  <main>
      <!-- Hero Area Start-->
      <div class="slider-area ">
          <div class="single-slider slider-height2 d-flex align-items-center">
              <div class="container">
                  <div class="row">
                      <div class="col-xl-12">
                          <div class="hero-cap text-center">
                              <h2>Cart List</h2>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      <!--================Cart Area =================-->
      <section class="cart_area section_padding">
        <div class="container">
          <div class="cart_inner">
            <div class="table-responsive">
            
            <form name="mycart" method="post">
            	<input type="hidden" name="userid" value="${userid}">
            	<input type="hidden" name="postcode" value="${postcode}">
            	<input type="hidden" name="address" value="${address}">
            	<input type="hidden" name="address_details" value="${detailaddress}">
            	<input type="hidden" name="extra_address" value="${extraaddress}">
            	<input type="hidden" name="email" value="${email}">
            	<input type="hidden" name="tel" value="${tel}">
              <table class="table">
                <thead>
                  <tr>
                    <th width="35%" scope="col">Product</th>
                    <th width="20%"scope="col">Price</th>
                    <th width="25%"scope="col">Quantity</th>
                    <th width="20%"scope="col">Total</th>
                  </tr>
                </thead>
                <tbody>
                
                <c:set var="index" value="0" />
				<c:forEach items="${inv_list}" var="inv_list">
                  <tr>
                    <td>
                      <div class="media">
                        <div class="d-flex">
                          <img src="assets/img/gallery/card1.png" alt="" />
                        </div>
                        <div class="media-body">
                          <p>${inv_list.p_name}</p>
                          <input type="hidden" name="p_id" value="${inv_list.p_id}">
                          <input type="hidden" name="inventoryid" value="${inv_list.inventoryid}">
                        </div>
                      </div>
                    </td>
                    <td>
                    	<input type="hidden" name="single_rate" value="${inv_list.p_price}">
                      <h5>￦<strong class="single_rate"></strong></h5>
                    </td>
                    <td>
                    	
                      <div class="product_count" product_index="${index}">
                        <span class="input-number-decrement"> <i class="ti-minus"></i></span>
                        <input class="input-number" type="text" value="${inv_list.p_amount}" min="1" max="10" readonly >
                        <span class="input-number-increment" > <i class="ti-plus"></i></span>
                        <input type="hidden" name="p_amount" value="${inv_list.p_amount}">
                      </div>
                    </td>
                    <td>
                    	<input type="hidden" name="total_rate">
                      <h5>￦<strong class="total_rate"></strong></h5>
                    </td>
                  </tr>
                  <c:set var="index" value="${index+1}" />
				</c:forEach>
                  
                  <tr>
                    <td></td>
                    <td></td>
                    <td>
                      <h5>Subtotal</h5>
                    </td>
                    <td>
                    	<input type="hidden" name="sub_total" value=0>
                      <h5>￦<strong id="sub_total"></strong></h5>
                    </td>
                  </tr>
                  <!-- <tr class="shipping_area">
                    <td></td>
                    <td></td>
                    <td>
                      <h5>Shipping</h5>
                    </td>
                    <td>
                      <div class="shipping_box">
                        <ul class="list">
                          <li>
                            Flat Rate: $5.00
                            <input type="radio" aria-label="Radio button for following text input">
                          </li>
                          <li>
                            Free Shipping
                            <input type="radio" aria-label="Radio button for following text input">
                          </li>
                          <li>
                            Flat Rate: $10.00
                            <input type="radio" aria-label="Radio button for following text input">
                          </li>
                          <li class="active">
                            Local Delivery: $2.00
                            <input type="radio" aria-label="Radio button for following text input">
                          </li>
                        </ul>
                        <h6>
                          Calculate Shipping
                          <i class="fa fa-caret-down" aria-hidden="true"></i>
                        </h6>
                        Base Address
                        <input type="radio" checked name="address" onclick="address_select('base')" aria-label="Radio button for following text input">
                        &nbsp;&nbsp;
                        New Address
                        <input type="radio" name="address" onclick="address_select('new')" aria-label="Radio button for following text input">
                        
                        <input class="post_code" type="text" placeholder="Postcode" name="address1" value="ad1"/>
                        <input class="post_code" type="text" placeholder="Zipcode" name="address2" value="ad2"/>
                        <input class="post_code" type="text" placeholder="ZipcodeDetails" name="address3" value="ad3"/>
                        <a class="btn_1" href="#">Update Details</a>
                      </div>
                    </td>
                  </tr> -->
                </tbody>
              </table>
              </form>
              <div class="checkout_btn_inner float-right">
                <a class="btn_1" href="#">Continue Shopping</a>
                <a class="btn_1 checkout_btn_1" href="javascript:proceed()">Proceed to checkout</a>
              </div>
            </div>
          </div>
      </section>
      <!--================End Cart Area =================-->
  </main>
 
     <%@include file="common/footer.jsp" %>
<script>
	
	$(document).ready(function(){
		$("input[name='p_amount']").eq(0).val($(".input-number").eq(0).val());
		$(".single_rate").eq(0).html($("[name='single_rate']").eq(0).val());
		$("[name='total_rate']").eq(0).val($("[name='single_rate']").eq(0).val()*$("input[name='p_amount']").eq(0).val());
		$(".total_rate").eq(0).html($("[name='total_rate']").eq(0).val());
		
		$("input[name='p_amount']").eq(1).val($(".input-number").eq(1).val());
		$(".single_rate").eq(1).html($("[name='single_rate']").eq(1).val());
		$("[name='total_rate']").eq(1).val($("[name='single_rate']").eq(1).val()*$("input[name='p_amount']").eq(1).val());
		$(".total_rate").eq(1).html($("[name='total_rate']").eq(1).val());
		
		$("input[name='p_amount']").eq(2).val($(".input-number").eq(2).val());
		$(".single_rate").eq(2).html($("[name='single_rate']").eq(2).val());
		$("[name='total_rate']").eq(2).val($("[name='single_rate']").eq(2).val()*$("input[name='p_amount']").eq(2).val());
		$(".total_rate").eq(2).html($("[name='total_rate']").eq(2).val());
		
		for(var x=0; x<3; x++){
			$("[name='sub_total']").val(Number($("[name='sub_total']").val())+Number($("[name='total_rate']").eq(x).val()));
		}
		$("#sub_total").html($("[name='sub_total']").val());
	});
	/* 
	function address_select(divis){
		if(divis=='new'){
			$("[name='address1']").val("");
			$("[name='address2']").val("");
			$("[name='address3']").val("");
			return;
		}
		
		if(divis=='base'){
			$("[name='address1']").val("1");
			$("[name='address2']").val("2");
			$("[name='address3']").val("3");
			return;
		}
	} */
	
	function proceed(){
		mycart.action="/project/checkout";
		mycart.submit();
	}
</script>
</body>
</html>