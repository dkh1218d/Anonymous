<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Watch shop | eCommers</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- CSS here -->
        <link rel="stylesheet" href="/resources/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="/resources/assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="/resources/assets/css/flaticon.css">
        <link rel="stylesheet" href="/resources/assets/css/slicknav.css">
        <link rel="stylesheet" href="/resources/assets/css/animate.min.css">
        <link rel="stylesheet" href="/resources/assets/css/magnific-popup.css">
        <link rel="stylesheet" href="/resources/assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="/resources/assets/css/themify-icons.css">
        <link rel="stylesheet" href="/resources/assets/css/slick.css">
        <link rel="stylesheet" href="/resources/assets/css/nice-select.css">
        <link rel="stylesheet" href="/resources/assets/css/style.css">
</head>

<body>
    <!--? Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="/resources/assets/img/logo/logo.png" alt="">
                </div>
            </div>
        </div>
    </div>

    <!-- Preloader Start -->
    <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="/"><img src="/resources/assets/img/logo/logo.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>                                                
                                <ul id="navigation">  
                             
                                		<c:set var="level" value="0" />             		
	                                	<c:forEach items="${list}" var="vo"> 
		                                	<c:if test="${vo.level > level}">
		                                		<c:if test="${vo.level == 1}">
		                                			<li>
		                                		</c:if>
		                                		<c:if test="${vo.level == 2}">
		                                			<ul class="submenu"><li>
		                                		</c:if>
		                                		<c:if test="${vo.level > 2}">
		                                			<ul class="submenu2"><li>
		                                		</c:if>
		                                	</c:if>
		                                	<c:if test="${vo.level < level}">
		                                		<c:if test="${level > 1}">
		                                			<c:forEach var="i" begin="${vo.level}" end="${level - 1}">
   														</li></ul>
													</c:forEach>
													</li><li>
		                                		</c:if>
		                                	</c:if>
		                                	<c:if test="${vo.level == level}">
												</li><li>
		                                	</c:if>
		                                	<a href="${vo.path}">${vo.category_name}</a>
		                                	<c:set var="level" value="${vo.level}" />
	                                	</c:forEach>
									</li>
                                	
                                	<!-- 
                                    <li class="hot"><a href="#">Latest</a>
                                        <ul class="submenu">
                                            <li><a href="shop.jsp?conv"> Product list</a></li>
                                            <li><a href="product_details.jsp?conv"> Product Details</a></li>
                                        </ul>
                                    </li>
                                     -->

                                   

                                </ul>
                            </nav>
                        </div>
                        <!-- Header Right -->
                        <div class="header-right">
                            <ul>
                                <li>
                                    <div class="nav-search search-switch">
                                        <span class="flaticon-search"></span>
                                    </div>
                                </li>
                                <li> <a href="/member/login"><span class="flaticon-user"></span></a></li>
                                <li><a href="cart.jsp?conv"><span class="flaticon-shopping-cart"></span></a> </li>
                                <c:if test="${sessionScope.user.username !=null}">
                                <li><a id="logoutbutton">${sessionScope.user.username}로그아웃</a></li>
                                </c:if>
                               <%--        <c:if test="${sessionScope.user ==null}">
                                <li><a>${sessionScope.user.username}로그인</a></li>
                                </c:if> --%>

                            </ul>
                        </div>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
			<div class="hide-area" style="display: none;">
			<div id="navigation">
				<c:set var="level" value="0" />
				<c:forEach items="${cat}" var="vo">
					<c:if test="${vo.level > level}">
						<c:if test="${vo.level == 2}">
							<div class="depth3">
							<ul>
						</c:if>
						<c:if test="${vo.level > 2}">
							<div class="depth4">
						</c:if>
					</c:if>
					<c:if test="${vo.level < level}">
						<c:if test="${level > 1}">
							<c:forEach var="i" begin="${vo.level}" end="${level - 1}">
								</ul>
								</div>
							</c:forEach>
							</div>
						</c:if>
					</c:if>
					<c:if test="${vo.level == 1}">
						<div class="depth2">
						<span>${vo.category_name}</span>
					</c:if>
					<c:if test="${vo.level != 1}">
						<li>${vo.category_name}</li>
					</c:if>
					<c:set var="level" value="${vo.level}" />
				</c:forEach>
				</ul></div></div>
				
				<!--
				<div class="depth2">	
					<span>MEN</span>
					<div class="depth3">
						<ul>
							<li>분더샵 클래식</li>
							<li>분더샵 남성</li>
							<li>분더샵 카미치에</li>
						</ul>
					</div>
				</div>
				-->
			</div>
		</div>
        </div>
        <script>
$(document)
.ready(
		function() {
			$("#logoutbutton").on("click", function() {
				alert("로그아웃 되셨습니다")
				location.reload();
			});
		});
</script>
        

        <!-- Header End -->
    </header>