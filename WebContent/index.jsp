﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Home</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- favicon
============================================ -->		
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">

<!-- All css files are included here. -->
<!-- Bootstrap framework main css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="css/core.css">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet" href="css/shortcode/shortcodes.css">
<!-- Theme main style -->
<link rel="stylesheet" href="style.css">
<!-- Responsive css -->
<link rel="stylesheet" href="css/responsive.css">
<!-- User style -->
<link rel="stylesheet" href="css/custom.css">

<!-- Modernizr JS -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->  
<!-- header start -->
<header class="header-pos">
	<div class="header-area header-middle">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2 col-sm-3 col-xs-12">
					<div class="logo">
						<a href="index.html"><img src="img/logo/logo.jpg" alt="" /></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
					<div class="main-menu display-inline hidden-sm hidden-xs">
						<nav>
							<ul>
							<li>亲爱的 <b>${user.name }</b> 您好!&nbsp;&nbsp;欢迎光临!</li>
								<li><a href="index.html">Home</a>
								</li>
								<li><a href="shop.html">Sofa</a></li>
								<li><a href="#">Elements</a></li>
								<li><a href="shop.html">Lighting</a></li>
								<li><a href="#">Pages</a></li>
								<li><a href="#">What's New</a></li>
							</ul>
						</nav>
					</div>
					<div class="search-block-top display-inline">
						<div class="icon-search"></div>
						<div class="toogle-content">
							<form action="#" id="searchbox">
								<input type="text" placeholder="Search" />
								<button class="button-search"></button>
							</form>
						</div> 
					</div>
					<div class="shopping-cart ml-20 display-inline">
						<a href="cart.html"><b>shopping cart</b>(2)</a>
						<ul>
							<li>
								<div class="cart-img">
									<a href="#"><img src="img/cart/1.jpg" alt="" /></a>
								</div>
								<div class="cart-content">
									<h3><a href="#"> 1 X Faded...</a> </h3>
									<span><b>S, Orange</b></span>
									<span class="cart-price">£ 16.84</span>
								</div>
								<div class="cart-del">
									<i class="fa fa-times-circle"></i>
								</div>
							</li>
							<li>
								<div class="cart-img">
									<a href="#"><img src="img/cart/1.jpg" alt="" /></a>
								</div>
								<div class="cart-content">
									<h3><a href="#"> 1 X Faded...</a> </h3>
									<span><b>S, Orange</b></span>
									<span class="cart-price">£ 16.84</span>
								</div>
								<div class="cart-del">
									<i class="fa fa-times-circle"></i>
								</div>
							</li>
							<li>
								<div class="shipping"> 
									<span class="f-left">Shipping </span>
									<span class="f-right cart-price"> $7.00</span>  
								</div>
								<hr class="shipping-border" />
								<div class="shipping">
									<span class="f-left"> Total </span>
									<span class="f-right cart-price">$692.00</span> 
								</div>
							</li>
							<li class="checkout m-0"><a href="#">checkout <i class="fa fa-angle-right"></i></a></li>
						</ul>							
					</div>
					<div class="setting-menu display-inline">
						<div class="icon-nav current"></div>
						<ul class="content-nav toogle-content">
							<li class="currencies-block-top">
								<div class="current"><b>Currency : USD</b></div>
								<ul>
									<li><a href="#">Dollar (USD)</a></li>
									<li><a href="#">Pound (GBP)</a></li>
								</ul>
							</li>
							<li class="currencies-block-top">
								<div class="current"><b>English</b></div>
								<ul>
									<li><a href="#">English</a></li>
									<li><a href="#">اللغة العربية</a></li>
								</ul>
							</li>
							<li class="currencies-block-top">
								<div class="current"><b>My Account</b></div>
								<ul>
									<li><a href="#">My account</a></li>
									<li><a href="#">My wishlist</a></li>
									<li><a href="#">Checkout</a></li>
									<li><a href="login.html">Log in</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mobile-menu-area visible-sm visible-xs">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<div class="mobile-menu">
						<nav id="mobile-menu-active">
							<ul>
								<li><a href="#">Home</a></li>
								<li><a href="shop.html">Sofa</a></li>
								<li><a href="#">Elements</a></li>
								<li><a href="shop.html">Lighting</a></li>
								<li><a href="#">Pages</a></li>
								<li><a href="#">What's New</a></li>
							</ul>
						</nav>							
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- header end -->
<!-- slider-container start -->
<div class="slider-container">
	<!-- Slider Image -->
	<div id="mainSlider" class="nivoSlider slider-image">
		<img src="img/slider/1.jpg" alt="" title="#htmlcaption1">
		<img src="img/slider/2.jpg" alt="" title="#htmlcaption2">
	</div>
	<!-- Slider Caption 1 -->
	<div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
		<div class="container">
			<div class="slide1-text">
				<div class="middle-text">
					<div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
						<h2>A BRAND</h2>
					</div>	
					<div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
						<h2>NEW ARRIVALS</h2>
					</div>	
					<div class="cap-text wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.3s">
						Fascinating outdoor lounge chair with wooden chairs for outdoor ideas with outdoor chaise lounge chair.
					</div>
					<div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s" data-wow-delay=".5s">
						<a href="#">Shopping</a>
					</div>	
				</div>	
			</div>				
		</div>
	</div>
	<!-- Slider Caption 2 -->
	<div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
		<div class="container">
			<div class="slide1-text">
				<div class="middle-text">
					<div class="cap-dec cap-1 wow bounceInRight" data-wow-duration="0.9s" data-wow-delay="0s">
						<h2>A BRAND</h2>
					</div>	
					<div class="cap-dec cap-2 wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.2s">
						<h2>NEW ARRIVALS</h2>
					</div>	
					<div class="cap-text wow bounceInRight" data-wow-duration="1.2s" data-wow-delay="0.3s">
						Fascinating outdoor lounge chair with wooden chairs for outdoor ideas with outdoor chaise lounge chair.
					</div>
					<div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s" data-wow-delay=".5s">
						<a href="#">Shopping</a>
					</div>	
				</div>	
			</div>					
		</div>
	</div>
</div>
<!-- slider-container end -->
<!-- banner-area start -->
<div class="banner-area pt-70">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="single-banner">
					<a href="#"><img src="img/banner/1.jpg" alt="" /></a>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="single-banner">
					<a href="#"><img src="img/banner/2.jpg" alt="" /></a>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- banner-area end -->
<!-- new-arrival-area start -->
<div class="new-arrival-area pt-100">
	<div class="container">
		<div class="row">
			<div class="section-title text-center mb-20">
				<h2>new arrivals</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="product-tab">
					<!-- Nav tabs -->
					<ul class="custom-tab text-center mb-40">
						<li class="active"><a href="#home" data-toggle="tab">Sofa</a></li>
						<li><a href="#profile" data-toggle="tab"> Chair</a></li>
						<li><a href="#messages" data-toggle="tab"> Lighting</a></li>
						<li><a href="#settings" data-toggle="tab"> Sale</a></li>
						<li><a href="#new" data-toggle="tab">  What's New</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="row">
						<div class="tab-content">
							<div class="tab-pane active" id="home">
								<div class="product-carousel">
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/12.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/11.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/3.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/1.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/4.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/11.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/5.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/10.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/5.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/6.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/7.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/8.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>										
							</div>
							<div class="tab-pane" id="profile">
								<div class="product-carousel">
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/12.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/11.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/10.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/1.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/8.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/8.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/7.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/6.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/5.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/2.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/2.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/1.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/8.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>
							<div class="tab-pane" id="messages">
								<div class="product-carousel">
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/4.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/11.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>									
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/12.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/2.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/3.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/1.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/5.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/10.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/5.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/6.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/7.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/8.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>
							<div class="tab-pane" id="settings">
								<div class="product-carousel">
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/6.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/5.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/2.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/2.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/11.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/12.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/10.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/5.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/6.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/7.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/8.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>
							<div class="tab-pane" id="new">
								<div class="product-carousel">
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/2.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/10.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/3.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/4.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/10.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/12.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/12.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/9.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="product-wrapper mb-40">
											<div class="product-img">
												<a href="#"><img src="img/product/7.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
										<div class="product-wrapper mb-40 mrg-nn-xs">
											<div class="product-img">
												<a href="#"><img src="img/product/8.jpg" alt="" /></a>
												<span class="new-label">New</span>
												<div class="product-action">
													<a href="#"><i class="pe-7s-cart"></i></a>
													<a href="#"><i class="pe-7s-like"></i></a>
													<a href="#"><i class="pe-7s-folder"></i></a>
													<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="pro-title">
													<h3><a href="product-details.html">Cras Neque Metus</a></h3>
												</div>
												<div class="price-reviews">
													<div class="price-box">
														<span class="price product-price">$262.00</span>
														<span class="old-price product-price">$262.00</span>
													</div>
													<div class="pro-rating">
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
														<a href="#"><i class="fa fa-star-o"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>								
							</div>
						</div>
					</div>
				</div>					
			</div>
		</div>
	</div>
</div>
<!-- new-arrival-area end -->
<!-- newsletter-area start -->
<div class="newsletter-area bg-1 ptb-180">
	<div class="container">
		<div id="newsletter_block_left">
			<h4><span>Sign up</span> for newsletter</h4>
			<p>Get exclusive deals you wont find anywhere else straight to your inbox!</p>
		</div>
		<div class="row">
			<div class="col-lg-6 col-md-8">
				<div class="block_content mt-60">
					<form id="mc-form" class="mc-form form-group">
						<input id="mc-email" type="email" autocomplete="off" placeholder="Your Email">
						<button  id="mc-submit" type="submit">Subscribe</button>
					</form>
					<!-- mailchimp-alerts Start -->
					<div class="mailchimp-alerts text-centre">
						 <div class="mailchimp-submitting"></div><!-- mailchimp-submitting end -->
						 <div class="mailchimp-success"></div><!-- mailchimp-success end -->
						 <div class="mailchimp-error"></div><!-- mailchimp-error end -->
					</div><!-- mailchimp-alerts end -->
				</div>					
			</div>
		</div>
	</div>
</div>
<!-- newsletter-area end -->
<!-- best-sell-area start -->
<div class="best-sell-area pt-30">
	<div class="container">
		<div class="row">
			<div class="section-title text-center mb-50">
				<h2>Bestseller Products </h2>
			</div>
		</div>		
		<div class="row">
			<div class="product-carousel">
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="img/product/12.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="img/product/11.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="img/product/3.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="img/product/1.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="img/product/4.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="img/product/11.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="img/product/5.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="img/product/10.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="img/product/5.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="img/product/9.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="img/product/6.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="img/product/9.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-12">
					<div class="product-wrapper mb-40">
						<div class="product-img">
							<a href="#"><img src="img/product/7.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
					<div class="product-wrapper mb-40 mrg-nn-xs">
						<div class="product-img">
							<a href="#"><img src="img/product/8.jpg" alt="" /></a>
							<span class="new-label">New</span>
							<div class="product-action">
								<a href="#"><i class="pe-7s-cart"></i></a>
								<a href="#"><i class="pe-7s-like"></i></a>
								<a href="#"><i class="pe-7s-folder"></i></a>
								<a href="#" data-toggle="modal" data-target="#productModal"><i class="pe-7s-look"></i></a>
							</div>
						</div>
						<div class="product-content">
							<div class="pro-title">
								<h3><a href="product-details.html">Cras Neque Metus</a></h3>
							</div>
							<div class="price-reviews">
								<div class="price-box">
									<span class="price product-price">$262.00</span>
									<span class="old-price product-price">$262.00</span>
								</div>
								<div class="pro-rating">
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
									<a href="#"><i class="fa fa-star-o"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>					
		</div>
	</div>
</div>
<!-- best-sell-area end -->
<!-- latest-blog-area start -->
<div class="latest-blog-area ptb-60">
	<div class="container">
		<div class="row">
			<div class="section-title text-center mb-50">
				<h2>latest blog</h2>
			</div>
		</div>			
		<div class="row">
			<div class="blog-active">
				<div class="col-lg-12">
					<div class="blog-wrapper mb-40">
						<div class="blog-img">
							<a href="#"><img src="img/blog/1.jpg" alt="" /></a>
						</div>
						<div class="blog-info">
							<h3><a href="#">What is Bootstrap? – The History...</a></h3>
							<div class="blog-meta">
								<span class="f-left">2016-04-20 21:50:35</span>
								<span class="f-right"><a href="#">Read More </a></span>
							</div>
						</div>
					</div>				
				</div>
				<div class="col-lg-12">
					<div class="blog-wrapper mb-40">
						<div class="blog-img">
							<a href="#"><img src="img/blog/2.jpg" alt="" /></a>
						</div>
						<div class="blog-info">
							<h3><a href="#">From Now we are certified web...</a></h3>
							<div class="blog-meta">
								<span class="f-left">2016-04-20 21:50:35</span>
								<span class="f-right"><a href="#">Read More </a></span>
							</div>
						</div>
					</div>				
				</div>
				<div class="col-lg-12">
					<div class="blog-wrapper mb-40">
						<div class="blog-img">
							<a href="#"><img src="img/blog/1.jpg" alt="" /></a>
						</div>
						<div class="blog-info">
							<h3><a href="#">Answers to your Questions about...</a></h3>
							<div class="blog-meta">
								<span class="f-left">2016-04-20 21:50:35</span>
								<span class="f-right"><a href="#">Read More </a></span>
							</div>
						</div>
					</div>				
				</div>
				<div class="col-lg-12">
					<div class="blog-wrapper mb-40">
						<div class="blog-img">
							<a href="#"><img src="img/blog/2.jpg" alt="" /></a>
						</div>
						<div class="blog-info">
							<h3><a href="#">Share the Love for PrestaShop 1.6</a></h3>
							<div class="blog-meta">
								<span class="f-left">2016-04-20 21:50:35</span>
								<span class="f-right"><a href="#">Read More </a></span>
							</div>
						</div>
					</div>				
				</div>
			</div>	
		</div>
	</div>
</div>
<!-- latest-blog-area end -->
<!-- brand-area start -->
<div class="brand-area">
	<div class="container">
		<div class="brand-sep ptb-50">
			<div class="row">
				<div class="brand-active">
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="img/brand/1.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="img/brand/2.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="img/brand/3.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="img/brand/4.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="img/brand/5.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="img/brand/1.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-lg-12">
						<div class="single-brand">
							<a href="#"><img src="img/brand/2.jpg" alt="" /></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- brand-area end -->
<!-- service-area start -->
<div class="service-area pt-70 pb-40 gray-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-sm-6">
				<div class="single-service mb-30">
					<div class="service-icon">
						<i class="pe-7s-world"></i>
					</div>
					<div class="service-title">
						<h3>FREE SHIPPING</h3>
						<p>Free shipping on all UK orders</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-service mb-30">
					<div class="service-icon">
						<i class="pe-7s-refresh"></i>
					</div>
					<div class="service-title">
						<h3>FREE EXCHANGE</h3>
						<p>30 days return on all items</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-service mb-30 sm-mrg">
					<div class="service-icon">
						<i class="pe-7s-headphones"></i>
					</div>
					<div class="service-title">
						<h3>PREMIUM SUPPORT</h3>
						<p>We support online 24 hours a day</p>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="single-service mb-30 xs-mrg sm-mrg">
					<div class="service-icon">
						<i class="pe-7s-gift"></i>
					</div>
					<div class="service-title">
						<h3>BLACK FRIDAY</h3>
						<p>Shocking discount on every friday</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- service-area end -->
<!-- footer start -->
<footer class="black-bg">
	<div class="footer-top-area ptb-60">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-4">
					<div class="footer-widget">
						<h3 class="footer-title">Contact info</h3>
						<div class="footer-contact">
							<ul>
								<li><em class="fa fa-map-marker"></em>XXX <span>XXX</span></li>
								<li><em class="fa fa-phone"></em>Telephones: XXX <span>Fax: XXX</span></li>
								<li><em class="fa fa-envelope-o"></em>Email: XXX</li>
							</ul>
						</div>							
					</div>
				</div>
				<div class="col-md-2 col-sm-4">
					<div class="footer-widget">
						<h3 class="footer-title">My account</h3>
						<ul class="block-content">
							<li><a href="#">My orders</a></li>
							<li><a href="#">My credit slips</a></li>
							<li><a href="#">Sitemap</a></li>
							<li><a href="#">My addresses</a></li>
							<li><a href="#">My personal info</a></li>	
						</ul>							
					</div>					
				</div>
				<div class="col-md-2 col-sm-4">
					<div class="footer-widget">
						<h3 class="footer-title">Information</h3>
						<ul class="block-content">
							<li><a href="#">Contact us</a></li>
							<li><a href="#">Discount</a></li>
							<li><a href="#">Site map</a></li>
							<li><a href="#">About us</a></li>	
							<li><a href="#">Custom service</a></li>									
						</ul>							
					</div>					
				</div>
				<div class="col-md-2 col-sm-4 footer-sm">
					<div class="footer-widget">
						<h3 class="footer-title">OUR SERVICE</h3>
						<ul class="block-content">
							<li><a href="#">My orders</a></li>
							<li><a href="#">My credit slips</a></li>
							<li><a href="#">Sitemap</a></li>
							<li><a href="#">My addresses</a></li>
							<li><a href="#">My personal info</a></li>	
						</ul>							
					</div>					
				</div>
				<div class="col-md-3 col-sm-4 footer-sm">
					<div class="footer-widget">
						<h3 class="footer-title">OPENING TIME</h3>
						<div class="footer-time">
							<p><span class="ft-content"><span class="day">Monday - Friday</span><span class="time">9:00 - 22:00</span></span></p>
							<p><span class="ft-content"><span class="day">Saturday</span><span class="time">10:00 - 24:00</span></span></p>
							<p><span class="ft-content"><span class="day">Sunday</span><span class="time">12:00 - 24:00</span></span></p>
							<p><span class="ft-content"><span class="day">Thursday</span><span class="time">Free Shipping</span></span></p>
							<p><span class="ft-content"><span class="day">Friday</span><span class="time">sale of 30%</span></span></p>
						</div>							
					</div>					
				</div>
			</div>
		</div>
	</div>
	<!-- footer-bootom-area start -->
	<div class="footer-bootom-area ptb-15">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="copyright">
						<p>Copyright &copy; 2020.Company name All rights reserved.</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="payment">
						<img src="img/payment.png" alt="" />
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer-bootom-area end -->
</footer>
<!-- footer end -->
<!-- Modal -->
<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
			</div>
			<div class="modal-body">
				<div class="modal-img">
					<a href="shop.html"><img src="img/product/1.jpg" alt="" /></a>
				</div>
				<div class="modal-pro-content">
					<h3><a href="#">Phasellus Vel Hendrerit</a></h3>
					<div class="pro-rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<span>(2 customer reviews)</span>
					<div class="price">
						<span>$70.00</span>
						<span class="old">$80.11</span>
					</div>
					<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet.</p>	
					<form action="#">
						<input type="number" value="1" />
						<button>Add to cart</button>
					</form>
					<div class="product_meta">
						<span class="posted_in">Categories: <a rel="tag" href="#">Albums</a>, <a rel="tag" href="#">Music</a></span> <span class="tagged_as">Tags: <a rel="tag" href="#">Albums</a>, <a rel="tag" href="#">Music</a></span> 
					</div>
					<div class="social">
						<a href="#"><i class="fa fa-facebook"></i></a>
						<a href="#"><i class="fa fa-twitter"></i></a>
						<a href="#"><i class="fa fa-google-plus"></i></a>
						<a href="#"><i class="fa fa-instagram"></i></a>
						<a href="#"><i class="fa fa-pinterest"></i></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal end -->



<!-- jquery latest version -->
<script src="js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="js/bootstrap.min.js"></script>
<!-- ajax-mail js -->
<script src="js/ajax-mail.js"></script>
<!-- owl.carousel js -->
<script src="js/owl.carousel.min.js"></script>
<!-- jquery.nivo.slider js -->
<script src="js/jquery.nivo.slider.pack.js"></script>
<!-- All js plugins included in this file. -->
<script src="js/plugins.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="js/main.js"></script>
</body>
</html>