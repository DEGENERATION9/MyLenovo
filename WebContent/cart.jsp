<%@ page language="java" import="java.util.*,java.text.*"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Cart</title>
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
	<header class="header-pos blg">
		<div class="header-area header-middle">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-2 col-sm-3 col-xs-12">
						<div class="logo">
							<a href="index.jsp"><img src="img/logo/logo1.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
						<div class="main-menu display-inline hidden-sm hidden-xs">
							<nav>
								<ul>
									<li><font color="orange">亲爱的 <b>${user.name }</b>
											您好!&nbsp;&nbsp;欢迎光临!
									</font></li>
									<li><a href="index.jsp">首页</a></li>
									<li><a href="shop.html">商城</a></li>
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
							<a href="cart.jsp"><b>购物车</b></a>

							<ul>
							<c:forEach items="${sessionScope.shoppingcar }"
										var="car">
								<li>
										<c:set var="count" value="${car.sum }"></c:set>
											<c:set var="sum" value="${car.sum*car.price }"></c:set>
											<c:set var="total" value="${total+car.sum*car.price }"></c:set>
										<div class="cart-img">
											<a href="#"><img src="img/product/${car.name }.jpg"
												weight="80%" height="80px" alt="${car.name }" /></a>
										</div>
										<div class="cart-content">
											<h3>
												<a href="#"> ${car.name }</a>
											</h3>
											<!-- <span><b>S, Orange</b></span> -->
											<span class="cart-price">${car.price }
												<p align="right">
													<b>x ${count}</b>
												</p>
											</span>

										</div>
										<!-- <div class="cart-del">
											<i class="fa fa-times-circle"></i>
										</div> -->
									</li>
							</c:forEach>
								<li>
									<!-- <div class="shipping"> 
										<span class="f-left">Shopping </span>
										<span class="f-right cart-price"> $7.00</span>  
									</div>  -->
									<hr class="shipping-border" />
									<div class="shipping">
										<span class="f-left"> 合计 </span> <span
											class="f-right cart-price">${total }</span>
									</div>
								</li>
								<li class="checkout m-0"><a href="#">结算 <i
										class="fa fa-angle-right"></i></a></li>
							
							</ul>
						</div>
						<div class="setting-menu display-inline">
							<div class="icon-nav current"></div>
							<ul class="content-nav toogle-content">
								<li class="currencies-block-top">
									<div class="current">
										<b>Currency : USD</b>
									</div>
									<ul>
										<li><a href="#">Dollar (USD)</a></li>
										<li><a href="#">Pound (GBP)</a></li>
									</ul>
								</li>
								<li class="currencies-block-top">
									<div class="current">
										<b>English</b>
									</div>
									<ul>
										<li><a href="#">English</a></li>
										<li><a href="#">اللغة العربية</a></li>
									</ul>
								</li>
								<li class="currencies-block-top">
									<div class="current">
										<b>My Account</b>
									</div>
									<ul>
										<li><a href="#">My account</a></li>
										<li><a href="#">My wishlist</a></li>
										<li><a href="#">Checkout</a></li>
										<li><a href="#">Log in</a></li>
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
									<li><font color="orange">亲爱的 <b>${user.name }</b>
											您好!&nbsp;&nbsp;欢迎光临!
									</font></li>
									<li><a href="index.html">首页</a></li>
									<li><a href="shop.html">商城</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- header end -->
	<div class="space-custom"></div>
	<!-- breadcrumb start -->
	<div class="breadcrumb-area">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i></a></li>
				<li><a href="shop.html">商城</a></li>
				<li class="active">购物车</li>
			</ol>
		</div>
	</div>
	<!-- breadcrumb end -->
	<!-- cart-main-area start -->
	<div class="cart-main-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<form action="#">
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-thumbnail">图片</th>
										<th class="product-name">产品</th>
										<th class="product-price">价格</th>
										<th class="product-quantity">数量</th>
										<th class="product-subtotal">总价</th>
										<th class="product-remove">删除</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${sessionScope.shoppingcar }" var="car">
										<tr>
											<td class="product-thumbnail"><a href="#"><img
													src="img/product/${car.name }.jpg" alt="" /></a></td>
											<td class="product-name" id="carName"><a href="#">${car.name }</a></td>
											<td class="product-price"><span class="amount">${car.price  }</span></td>
											<td class="product-quantity"><input type="number"
												value="${car.sum }" /></td>
											<c:set var="count" value="${car.sum }"></c:set>
											<c:set var="sum" value="${car.sum*car.price }"></c:set>
											<%-- <c:set var="total" value="${total+car.sum*car.price }"></c:set> --%>
											<td class="product-subtotal">${sum }</td>
											<td class="product-remove"><a
												href="shoppingCarServlet?action=delAll&&goodsid=1"><i
													class="fa fa-times"></i></a></td>
										</tr>

									</c:forEach>

									<!-- <tr>
										<td class="product-thumbnail"><a href="#"><img src="img/product/1.jpg" alt="" /></a></td>
										<td class="product-name"><a href="#">Vestibulum suscipit</a></td>
										<td class="product-price"><span class="amount">£165.00</span></td>
										<td class="product-quantity"><input type="number" value="1" /></td>
										<td class="product-subtotal">£165.00</td>
										<td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
									</tr>
									<tr>
										<td class="product-thumbnail"><a href="#"><img src="img/product/2.jpg" alt="" /></a></td>
										<td class="product-name"><a href="#">Vestibulum dictum magna</a></td>
										<td class="product-price"><span class="amount">£50.00</span></td>
										<td class="product-quantity"><input type="number" value="1" /></td>
										<td class="product-subtotal">£50.00</td>
										<td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
									</tr> -->
								</tbody>
							</table>
						</div>
						<div class="row">
							<div class="col-md-8 col-sm-7 col-xs-12">
								<div class="buttons-cart">
									<!-- <input type="submit" value="清空购物车" /> -->
									<a href="shoppingCarServlet?action=delCar">清空购物车</a> <a
										href="shop.html">继续购物</a>
								</div>
								<!-- <div class="coupon">
									<h3>Coupon</h3>
									<p>Enter your coupon code if you have one.</p>
									<input type="text" placeholder="Coupon code" />
									<input type="submit" value="Apply Coupon" />
								</div> -->
							</div>
							<div class="col-md-4 col-sm-5 col-xs-12">
								<div class="cart_totals">
									<h2>CART
										总&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;计</h2>
									<table>
										<tbody>
											<!-- <tr class="cart-subtotal">
												<th>Subtotal</th>
												<td><span class="amount">￥215.00</span></td>
											</tr>
 -->
											<tr class="order-total">
												<th>合计</th>
												<td><strong><span class="amount">${total }</span></strong>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="wc-proceed-to-checkout">
										<a href="#">结算</a>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- cart-main-area end -->
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
							<h3>包邮</h3>
							<p>全国范围内由商家免费配送</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service mb-30">
						<div class="service-icon">
							<i class="pe-7s-refresh"></i>
						</div>
						<div class="service-title">
							<h3>退换货</h3>
							<p>7天无理由退换货</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service mb-30 sm-mrg">
						<div class="service-icon">
							<i class="pe-7s-headphones"></i>
						</div>
						<div class="service-title">
							<h3>售后服务</h3>
							<p>24小时在线客服</p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-service mb-30 xs-mrg sm-mrg">
						<div class="service-icon">
							<i class="pe-7s-gift"></i>
						</div>
						<div class="service-title">
							<h3>新品抢先体验</h3>
							<p>官方品质质量保证</p>
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
							<h3 class="footer-title">联系信息</h3>
							<div class="footer-contact">
								<ul>
									<!-- 									<li><em class="fa fa-map-marker"></em>XXX <span>XXX</span></li>
 -->
									<li><em class="fa fa-phone"></em>电话: 400-990-8888</li>
									<li>周一到周日 9:00-21:00</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-2 col-sm-4">
						<div class="footer-widget">
							<h3 class="footer-title">购物指南</h3>
							<ul class="block-content">
								<li><a
									href="https://shop.lenovo.com.cn/help/service-provider-information.html?_ga=2.212738268.956753511.1608969783-2124958120.1607225665">服务商信息</a></li>
								<li><a href="#">购买流程</a></li>
								<li><a href="#">注册登录</a></li>
								<li><a href="#">商品评价</a></li>
								<!-- <li><a href="#">My personal info</a></li> -->
							</ul>
						</div>
					</div>
					<div class="col-md-2 col-sm-4">
						<div class="footer-widget">
							<h3 class="footer-title">配送方式</h3>
							<ul class="block-content">
								<li><a href="#">配送方式</a></li>
								<li><a href="#">配送方式信息</a></li>
								<li><a href="#">签收原则</a></li>
								<li><a href="#">物流查询</a></li>

							</ul>
						</div>
					</div>
					<div class="col-md-2 col-sm-4 footer-sm">
						<div class="footer-widget">
							<h3 class="footer-title">售后服务</h3>
							<ul class="block-content">
								<li><a href="#">售后服务总则</a></li>
								<li><a href="#">24小时在线客服</a></li>
								<li><a href="#">联想服务入口</a></li>
								<li><a href="#">热门解决方案</a></li>

							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-4 footer-sm">
						<div class="footer-widget">
							<h3 class="footer-title">其他说明</h3>
							<div class="footer-time">
								<ul class="block-content">
									<li><a href="#">服务承诺</a></li>
									<li><a href="#">账户安全</a></li>
									<li><a href="#">手机产品购买须知</a></li>
									<li><a href="#">环境信息</a></li>

								</ul>

								<!-- <p><span class="ft-content"><span class="day">Monday
											- Friday</span><span class="time">9:00 - 22:00</span></span>
								</p>
								<p>
									<span class="ft-content"><span class="day">Saturday</span><span
										class="time">10:00 - 24:00</span></span>
								</p>
								<p>
									<span class="ft-content"><span class="day">Sunday</span><span
										class="time">12:00 - 24:00</span></span>
								</p>
								<p>
									<span class="ft-content"><span class="day">Thursday</span><span
										class="time">Free Shipping</span></span>
								</p>
								<p>
									<span class="ft-content"><span class="day">Friday</span><span
										class="time">sale of 30%</span></span>
								</p> -->
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
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">x</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="modal-img">
						<a href="shop.html"><img src="img/product/1.jpg" alt="" /></a>
					</div>
					<div class="modal-pro-content">
						<h3>
							<a href="#">Phasellus Vel Hendrerit</a>
						</h3>
						<div class="pro-rating">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-o"></i>
						</div>
						<span>(2 customer reviews)</span>
						<div class="price">
							<span>$70.00</span> <span class="old">$80.11</span>
						</div>
						<p>Pellentesque habitant morbi tristique senectus et netus et
							malesuada fames ac turpis egestas. Vestibulum tortor quam,
							feugiat vitae, ultricies eget, tempor sit amet.</p>
						<form action="#">
							<input type="number" value="1" />
							<button>Add to cart</button>
						</form>
						<div class="product_meta">
							<span class="posted_in">Categories: <a rel="tag" href="#">Albums</a>,
								<a rel="tag" href="#">Music</a></span> <span class="tagged_as">Tags:
								<a rel="tag" href="#">Albums</a>, <a rel="tag" href="#">Music</a>
							</span>
						</div>
						<div class="social">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-google-plus"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a> <a href="#"><i
								class="fa fa-pinterest"></i></a>
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
	<!-- owl.carousel js -->
	<script src="js/jquery-ui.min.js"></script>
	<!-- jquery.nivo.slider js -->
	<script src="js/jquery.nivo.slider.pack.js"></script>
	<!-- All js plugins included in this file. -->
	<script src="js/plugins.js"></script>
	<!-- Main js file that contents all jQuery plugins activation. -->
	<script src="js/main.js"></script>
</body>

</html>
