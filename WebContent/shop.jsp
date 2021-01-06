<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城主页</title>
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
						<a href="index.jsp"><img src="img/logo/logo1.jpg" alt="" /></a>
					</div>
				</div>
				<div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
					<div class="main-menu display-inline hidden-sm hidden-xs">
						<nav>
						<ul>
							<li><font color="orange">亲爱的 <b>${user.userno }</b>
									您好!&nbsp;&nbsp;欢迎光临!
							</font></li>
							<li><a href="GoodsServlet?action=findbytype&&type=0">首页</a></li>
							<li><a href="GoodsServlet?action=findbytype1&&type=0">商城</a></li>

						</ul>
						</ul>
						</nav>
					</div>
					<div class="search-block-top display-inline">
						<div class="icon-search"></div>
						<div class="toogle-content">
							<form action="GoodsServlet?action=search" method="post"
								id="searchbox">
								<input type="text" name="title" placeholder="搜索" />
								<button class="button-search"></button>
							</form>
						</div>
					</div>
					<div class="shopping-cart ml-20 display-inline">
						<a href="cart.jsp"><b>购物车</b></a>

						<ul>
							<c:forEach items="${sessionScope.shoppingcar }" var="car">
								<li><c:set var="count" value="${car.sum }"></c:set> <c:set
										var="sum" value="${car.sum*car.price }"></c:set> <c:set
										var="total" value="${total+car.sum*car.price }"></c:set>
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

									</div> <!-- <div class="cart-del">
											<i class="fa fa-times-circle"></i>
										</div> --></li>
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
							<li class="checkout m-0"><a href="cart.jsp">结算 <i
									class="fa fa-angle-right"></i></a></li>

						</ul>
					</div>
					<div class="setting-menu display-inline">
						<div class="icon-nav current"></div>
						<ul class="content-nav toogle-content">

							<!-- <li><a href="#">My wishlist</a></li>
										<li><a href="#">Checkout</a></li> -->

							<li><a href="login.jsp">登录/注册</a></li>
							<li><a href="MyPersonalPage.jsp">用户信息</a></li>
							<li><a href="userServlet?action=logout">注销退出</a></li>
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

							<li><a href="GoodsServlet?action=findbytype&&type=0"><font
									color="white">首页</font></a></li>
							<li><a href="GoodsServlet?action=findbytype1&&type=0"><font
									color="white">商城</font></a></li>
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
				<li><a href="GoodsServlet?action=findbytype&&type=0"><i
						class="fa fa-home"></i></a></li>
				<li><a href="GoodsServlet?action=findbytype1&&type=0">商城</a></li>
				<li class="active">商城主页</li>
			</ol>
		</div>
	</div>
	<!-- breadcrumb end -->
	<!-- shop-area start -->
	<div class="shop-area">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-4">
					<div class="column">
						<h2 class="title-block">分类</h2>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">
								<a href="GoodsServlet?action=findbytype1&&type=0">笔记本</a>
							</h3>
							<ul class="sidebar-menu">
								<!--<li><a href="#">In stock <span>(13)</span></a></li>
								<li><a href="#">In stock <span>(13)</span></a></li> -->
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">
								<a href="GoodsServlet?action=findbytype1&&type=1">台式电脑</a>
							</h3>
							<ul class="sidebar-menu">
								<!-- <li><a href="#">New <span>(11)</span></a></li> -->
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">
								<a href="GoodsServlet?action=findbytype1&&type=2">平板电脑</a>
							</h3>
							<ul class="sidebar-menu">
								<!-- <li><a href="#"> Fashion Manufacturer  <span>(13)</span></a></li> -->
							</ul>
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">
								<a href="GoodsServlet?action=findbytype1&&type=3">配件</a>
							</h3>
							<!-- <div class="price-filter">
								<p>
								  <label for="amount">Range:</label>
								  <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
								</p> 
								<div id="slider-range"></div>
							</div> -->
						</div>
						<div class="sidebar-widget">
							<h3 class="sidebar-title">
								<a href="GoodsServlet?action=suggest">猜你喜欢</a>
							</h3>
						</div>
						</div>
					</div>
					<div class="col-md-9 col-sm-8">
						<h2 class="page-heading mt-40">
							<span class="cat-name">展示</span>
							<!-- <span class="heading-counter">There are 13 products.</span> -->
						</h2>
						<div class="shop-page-bar">
							<div>
								<div class="shop-bar">
									<!-- Nav tabs -->
									<ul class="shop-tab f-left" role="tablist">
										<li role="presentation" class="active"><a href="#home"
											data-toggle="tab"><i class="fa fa-th-large"
												aria-hidden="true"></i></a></li>
										<!-- <li role="presentation"><a href="#profile" data-toggle="tab"><i class="fa fa-th-list" aria-hidden="true"></i></a></li> -->
									</ul>

									<div class="selector-field f-left ml-20 hidden-xs">
										<!-- <form action="GoodsServlet?action=sort" name="form1"> -->
										<label>筛选</label>
										<!-- <select name="select" onchange="sort(this.value);">
											<option value="0">----</option>
											<option value="sort">价格升序</option>
											<option value="de">价格降序</option>
										</select> -->
										<a href="GoodsServlet?action=asc">
											<button type="button" class="submit">价格升序</button> <!-- onclick="asc()" -->
										</a>
										<button type="button" class="submit" onclick="desc()">价格降序</button>
										 <script type="text/javascript">
										
										 function  desc(){
                  								
           										alert('降序');
           										window.location.href="GoodsServlet?action=asc";
           										/* var list=${list};
           										<c:forEach var="obj" items="list">  
           										alert("降序"+obj.price);
           										</c:forEach> */ 
             								}
 										</script> 
										<!-- </form> -->

									</div>

								</div>
								<!-- Tab panes -->
								<div class="tab-content">
									<div role="tabpanel" class="tab-pane active" id="home">
										<div class="row">

											<c:forEach items="${list}" var="item">
												<div class="col-md-4 col-sm-6">
													<div class="product-wrapper mb-40">
														<div class="product-img">
															<a href="#"><img src="img/product/${item.title }.jpg"
																alt="" /></a> <span class="new-label">New</span>
															<div class="product-action">
																<a
																	href="shoppingCarServlet?action=add&&goodsid=${item.id }"><i
																	class="pe-7s-cart"></i></a> <a href="#"><i
																	class="pe-7s-like"></i></a> <a href="#"><i
																	class="pe-7s-folder"></i></a> <a href="#"
																	data-toggle="modal" data-target="#productModal"><i
																	class="pe-7s-look"></i></a>
															</div>
														</div>
														<div class="product-content">
															<div class="pro-title">
																<h3>
																	<a href="product-details.html">${item.title }</a>
																</h3>
															</div>
															<div class="price-reviews">
																<div class="price-box">
																	<span class="price product-price" id="price">${item.price }</span>
																	<span class="old-price product-price">$262.00</span>
																</div>
																<div class="pro-rating">
																	<a href="#"><i class="fa fa-star-o"></i></a> <a
																		href="#"><i class="fa fa-star-o"></i></a> <a href="#"><i
																		class="fa fa-star-o"></i></a> <a href="#"><i
																		class="fa fa-star-o"></i></a> <a href="#"><i
																		class="fa fa-star-o"></i></a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>
										</div>
									</div>


									<div class="content-sortpagibar">
										<!-- <div class="product-count display-inline">Showing 1 - 12
										of 13 items</div> -->
										<ul class="shop-pagi display-inline">
											<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
										</ul>
										<div class="selector-field f-right"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- shop-area end -->
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
		<!-- footer-bootom-area end --> </footer>
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
								<span>￥70.00</span> <span class="old">￥80.11</span>
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
		<!-- jquery.nivo.slider js -->
		<script src="js/jquery.nivo.slider.pack.js"></script>
		<!-- All js plugins included in this file. -->
		<script src="js/plugins.js"></script>
		<!-- Main js file that contents all jQuery plugins activation. -->
		<script src="js/main.js"></script>
</body>
</html>