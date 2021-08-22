<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<%@include file="common/header.jsp" %>
<head>
<link rel="stylesheet" href="/resources/assets/css/custom.css">
<script>
window.onload = function(){
	document.getElementById('totalCost').innerHTML=new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(parseInt(document.getElementById('quantity').value)*10000);
}

function quantity_decrement(){
	if(parseInt(document.getElementById('quantity').value)>1){
		document.getElementById('quantity').value=parseInt(document.getElementById('quantity').value)-1;
		document.getElementById('totalCost').innerHTML=new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(parseInt(document.getElementById('quantity').value)*10000);
	}
		return;
}

function quantity_increment(){
	document.getElementById('quantity').value=parseInt(document.getElementById('quantity').value)+1;
	document.getElementById('totalCost').innerHTML=new Intl.NumberFormat('ko-KR', { style: 'currency', currency: 'KRW' }).format(parseInt(document.getElementById('quantity').value)*10000);
	return;
}


</script>
</head>
    <main>
        <!-- Hero Area Start-->
        <div class="slider-area ">
            <div class="single-slider slider-height2 d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap text-center">
                                <h2>Watch Shop</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero Area End-->
        <!--================Single Product Area =================-->
        <div class="product_image_area">
            <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                <div class="product_img_slide owl-carousel">
                    <div class="single_product_img">
                        <img src="/resources/assets/img/gallery/gallery1.png" alt="#" class="img-fluid">
                    </div>
                    <div class="single_product_img">
                        <img src="/resources/assets/img/gallery/gallery01.png" alt="#" class="img-fluid">
                    </div>
                    <div class="single_product_img">
                        <img src="/resources/assets/img/gallery/gallery1.png" alt="#" class="img-fluid">
                    </div>
                </div>
                </div>
                <div class="col-lg-8">
                <div class="single_product_text text-center">
                    <h3>Foam filling cotton slow <br>
                        rebound pillows</h3>
                    <p>
                        Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources. Credibly innovate granular internal or “organic” sources whereas high standards in web-readiness. Credibly innovate granular internal or organic sources whereas high standards in web-readiness. Energistically scale future-proof core competencies vis-a-vis impactful experiences. Dramatically synthesize integrated schemas. with optimal networks.
                    </p>
                
              		<div class="order_box">
                		<h3>Billing Address</h3>
                    	<div class="order_card">
                        	<div class="card_left">
                        	<div class="order_box order-box">
				            	<h2>옵션</h2>
				                   <div class="option-block">
					                    <ul class="list option-selectbox">
					                      <li>
					                        	<div class="default-select" id="default-select">
													<select style="width:50px">
														<option value="1">옵션1</option>
														<option value="2">옵션2</option>
														<option value="3">옵션3</option>
														<option value="4">옵션4</option>
														<option value="5">옵션5</option>
													</select>
												</div>
					                    </ul>
					                    <div class="quantity_purchasebox">
					                    <div class="quantity_purchase">
											<a href="javascript:quantity_decrement()"><img src="/resources/assets/img/adapt_icon/file-minus.svg" alt="" width="24px" height="24px" title="Bootstrap"></a>
											<input id="quantity" type="text" value="1" size="1" readonly style="text-align:center" onchange="javascript:reCalc()">
											<a href="javascript:quantity_increment()"><img src="/resources/assets/img/adapt_icon/file-plus.svg" alt="" width="24px" height="24px" title="Bootstrap"></a>
										</div>
										</div>
					                      </li>				                   
									</div>
                  				</div>
                    		</div>
                    		<div class="card_right">
                    			<div class="order_box order-box">
				                    <h2>Your Order</h2>
				                    <ul class="list">
				                      <li>
				                        <a href="#">Product
				                          <span>Total</span>
				                        </a>
				                      </li>
				                      <li>
				                        <a href="#">Fresh Blackberry
				                          <span class="middle">x 02</span>
				                          <span class="last">$720.00</span>
				                        </a>
				                      </li>
				                      <li>
				                        <a href="#">Fresh Tomatoes
				                          <span class="middle">x 02</span>
				                          <span class="last">$720.00</span>
				                        </a>
				                      </li>
				                      <li>
				                        <a href="#">Fresh Brocoli
				                          <span class="middle">x 02</span>
				                          <span class="last">$720.00</span>
				                        </a>
				                      </li>
				                    </ul>
				                    <ul class="list list_2">
				                      <li>
				                        <a href="#">Total
				                          <span id="totalCost">$2210.00</span>
				                        </a>
				                      </li>
				                    </ul>
                  				</div>
                    		</div>
            			</div>
                    		<div class="add_to_cart">
                        		<a href="#" class="btn_3 addtocart_btn">add to cart</a>
                    		</div>
              		</div>
                </div>
                </div>
            </div>
            </div>
        </div>
        
        
        <div class="comment-area-wrapper">
        <div class="comments-area">
                     <h4>05 Comments</h4>
                     <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                           <div class="user justify-content-between d-flex">
                              <div class="thumb">
                                 <img src="/resources/assets/img/comment/comment_1.png" alt="">
                              </div>
                              <div class="rate_comment_container">
		        				<div class="rate_container">
							        <div class="starrating_comment risingstar d-flex justify-content-center flex-row-reverse">
							            <input type="radio" id="star5_c" name="rating3" value="5" checked disabled/><label for="star5_c" title="5 star"></label>
							            <input type="radio" id="star4_c" name="rating3" value="4" disabled/><label for="star4_c" title="4 star"></label>
							            <input type="radio" id="star3_c" name="rating3" value="3" disabled/><label for="star3_c" title="3 star"></label>
							            <input type="radio" id="star2_c" name="rating3" value="2" disabled/><label for="star2_c" title="2 star"></label>
							            <input type="radio" id="star1_c" name="rating3" value="1" disabled/><label for="star1_c" title="1 star"></label>
							        </div>
							        <p class="name">정**</p>
							        <p class="date">December 4, 2017 at 3:12 pm </p>
  								</div>	
		 						<div class="rate_comment_break"></div> <!-- break -->
                              	<div class="desc">
                                 <p class="comment">
                                    Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
                                    Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
                                 </p>
                                 <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                       <h5>
                                          <a href="#">Emilly Blunt</a>
                                       </h5>
                                       
                                    </div>
                                    <div class="reply-btn">
                                       <a href="#" class="btn-reply text-uppercase">reply</a>
                                    </div>
                                 </div>
                              </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                           <div class="user justify-content-between d-flex">
                              <div class="thumb">
                                 <img src="/resources/assets/img/comment/comment_2.png" alt="">
                              </div>
                              <div class="rate_comment_container">
		        				<div class="rate_container">
							        <div class="starrating_comment risingstar d-flex justify-content-center flex-row-reverse">
							            <input type="radio" id="star5_c" name="rating1" value="5" disabled/><label for="star5_c" title="5 star"></label>
							            <input type="radio" id="star4_c" name="rating1" value="4" disabled/><label for="star4_c" title="4 star"></label>
							            <input type="radio" id="star3_c" name="rating1" value="3" checked disabled/><label for="star3_c" title="3 star"></label>
							            <input type="radio" id="star2_c" name="rating1" value="2" disabled/><label for="star2_c" title="2 star"></label>
							            <input type="radio" id="star1_c" name="rating1" value="1" disabled/><label for="star1_c" title="1 star"></label>
							        </div>
							        <p class="name">손**</p>
							        <p class="date">December 4, 2017 at 3:12 pm </p>
  								</div>	
		 						<div class="rate_comment_break"></div> <!-- break -->
                              	<div class="desc">
                                 <p class="comment">
                                    Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
                                    Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
                                 </p>
                                 <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                       <h5>
                                          <a href="#">Emilly Blunt</a>
                                       </h5>
                                       
                                    </div>
                                    <div class="reply-btn">
                                       <a href="#" class="btn-reply text-uppercase">reply</a>
                                    </div>
                                 </div>
                              </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="comment-list">
                        <div class="single-comment justify-content-between d-flex">
                           <div class="user justify-content-between d-flex">
                              <div class="thumb">
                                 <img src="/resources/assets/img/comment/comment_3.png" alt="">
                              </div>
                              <div class="rate_comment_container">
		        				<div class="rate_container">
							        <div class="starrating_comment risingstar d-flex justify-content-center flex-row-reverse">
							            <input type="radio" id="star5_c" name="rating2" value="5" disabled/><label for="star5_c" title="5 star"></label>
							            <input type="radio" id="star4_c" name="rating2" value="4" disabled/><label for="star4_c" title="4 star"></label>
							            <input type="radio" id="star3_c" name="rating2" value="3" disabled/><label for="star3_c" title="3 star"></label>
							            <input type="radio" id="star2_c" name="rating2" value="2" disabled/><label for="star2_c" title="2 star"></label>
							            <input type="radio" id="star1_c" name="rating2" value="1" checked disabled/><label for="star1_c" title="1 star"></label>
							        </div>
							        <p class="name">오**</p>
							        <p class="date">December 4, 2017 at 3:12 pm </p>
  								</div>	
		 						<div class="rate_comment_break"></div> <!-- break -->
                              	<div class="desc">
                                 <p class="comment">
                                    Multiply sea night grass fourth day sea lesser rule open subdue female fill which them
                                    Blessed, give fill lesser bearing multiply sea night grass fourth day sea lesser
                                 </p>
                                 <div class="d-flex justify-content-between">
                                    <div class="d-flex align-items-center">
                                       <h5>
                                          <a href="#">Emilly Blunt</a>
                                       </h5>
                                       
                                    </div>
                                    <div class="reply-btn">
                                       <a href="#" class="btn-reply text-uppercase">reply</a>
                                    </div>
                                 </div>
                              </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <nav class="blog-pagination justify-content-center d-flex">
                                <ul class="pagination">
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Previous">
                                            <i class="ti-angle-left"></i>
                                        </a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link">1</a>
                                    </li>
                                    <li class="page-item active">
                                        <a href="#" class="page-link">2</a>
                                    </li>
                                    <li class="page-item">
                                        <a href="#" class="page-link" aria-label="Next">
                                            <i class="ti-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                  <div class="comment-form">
                     <h4>Leave a Review</h4>
                     <div class="container">
				        <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
				            <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="5 star"></label>
				            <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="4 star"></label>
				            <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="3 star"></label>
				            <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="2 star"></label>
				            <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="1 star"></label>
				        </div>
  					</div>	
                     <form class="form-contact comment_form" action="#" id="commentForm">
                        <div class="row">
                           <div class="col-12">
                              <div class="form-group">
                                 <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                    placeholder="Write Comment"></textarea>
                              </div>
                           </div>
                        </div>
                        
                        <div class="form-group">
                           <button type="submit" class="button button-contactForm btn_1 boxed-btn">Comment</button>
                        </div>
                     </form>
                  </div>
               </div>
               <div>
               
               
        <!--================End Single Product Area =================-->
        <!-- subscribe part here -->
        <section class="subscribe_part section_padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="subscribe_part_content">
                            <h2>Get promotions & updates!</h2>
                            <p>Seamlessly empower fully researched growth strategies and interoperable internal or “organic” sources credibly innovate granular internal .</p>
                            <div class="subscribe_form">
                                <input type="email" placeholder="Enter your mail">
                                <a href="#" class="btn_1">Subscribe</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- subscribe part end -->
    </main>
    
     <%@include file="common/footer.jsp" %>
</body>
</html>