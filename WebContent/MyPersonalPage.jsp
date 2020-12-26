<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" import="java.sql.Statement" import="java.sql.*"%>
<!DOCTYPE html>
<!-- 吴培磊 -->
<html class="no-js" lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>个人页面</title>
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

<script type="text/javascript">
	function verifyInfo() {
		//密码
		if (!verifyPwd(document.user.password.value)) {
			alert("请按照要求填写密码");
			return false;
		}
		//两次密码相同
		if (!verifyConfirmPwd(document.user.password.value,
				document.user.qpassword.value)) {
			alert("请保证两次输入的密码一致");
			return false;
		}
		//真实姓名
		if (!verifyName(document.user.name.value)) {
			alert("请按要求输入真实姓名");
			return false;
		}
		//家庭地址
		if (!verifyNotNull(document.user.address.value)) {
			alert("家庭住址不能为空");
			return false;
		}
		//电话号码
		if (!verifyTel(document.user.phone.value)) {
			alert("请按要求输入电话号码");
			return false;
		}
		//电子邮箱
		if (!verifyEmail(document.user.email.value)) {
			alert("请按要求输入电子邮箱");
			return false;
		}
	}
</script>
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
							<a href="index.html"><img src="img/logo/logo.jpg" alt="" /></a>
						</div>
					</div>
					<div class="col-md-10 col-sm-9 col-xs-12 text-right xs-center">
						<div class="main-menu display-inline hidden-sm hidden-xs">
							<nav>
								<ul>
									<li><a href="index.html">Home</a></li>
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
										<h3>
											<a href="#"> 1 X Faded...</a>
										</h3>
										<span><b>S, Orange</b></span> <span class="cart-price">£
											16.84</span>
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
										<h3>
											<a href="#"> 1 X Faded...</a>
										</h3>
										<span><b>S, Orange</b></span> <span class="cart-price">£
											16.84</span>
									</div>
									<div class="cart-del">
										<i class="fa fa-times-circle"></i>
									</div>
								</li>
								<li>
									<div class="shipping">
										<span class="f-left">Shipping </span> <span
											class="f-right cart-price"> $7.00</span>
									</div>
									<hr class="shipping-border" />
									<div class="shipping">
										<span class="f-left"> Total </span> <span
											class="f-right cart-price">$692.00</span>
									</div>
								</li>
								<li class="checkout m-0"><a href="#">checkout <i
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

	<!修改>
	<table width="900" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>

		</tr>
		<tr>
			<td height="20"></td>

		</tr>

		<tr>
			<td align="center" valign="center" height="450">

				<form
					action="${pageContext.request.contextPath }/UserServlet?action=update"
					name="form1" method="post" onsubmit="return verifyInfo()">

					<div align="center">
						<br>
						<table border="1" cellspacing="0" width="700">
							<tr>
								<td colspan="3" align="center" height="25"><font
									color="#666666">请填写用户信息 </font></td>
							</tr>
							<br></br>
							<br></br>
							<br></br>
							<tr>
								<td height="25" align="right"><font color="#996633">用
										户 名：</font></td>
								<td height="25" align="left"><input class="input7"
									type="text" name="name" value="${sessionScope.user.name }" /></td>
								<td height="25" align="left">&nbsp;您用来登录的用户名</td>
							</tr>
							<tr>
								<td height="25" align="right"><font color="#996633">密&nbsp;&nbsp;
										&nbsp;码：</font></td>
								<td height="25" align="left"><input class="input7"
									type="password" name="pwd" value="${sessionScope.user.pwd }" /></td>
								<td height="25" align="left">&nbsp;长度必须大于5个小于16个字符，只能为英语字、数字</td>
							</tr>
							<tr>
								<td height="25" align="right"><font color="#996633">确认密码：</font>
								</td>
								<td height="25" align="left"><input class="input7"
									type="password" name="qpwd" value="${sessionScope.user.pwd }" /></td>
								<td height="25" align="left">&nbsp;请将输入的密码再次输入</td>
							</tr>
							<tr>
								<td height="25" align="right"><font color="#996633">真实姓名：</font>
								</td>
								<td height="25" align="left"><input class="input7"
									type="text" name="realname"
									value="${sessionScope.user.realname }" /></td>
								<td height="25" align="left">&nbsp;填写您的真实的姓名</td>
							</tr>
							<tr>
								<td height="25" align="right"><font color="#996633">性&nbsp;
										&nbsp;&nbsp;别：</font></td>
								<td height="25" align="left"><input class="input7"
									type="text" name="sex" value="${sessionScope.user.sex }" /></td>
								<td height="25" align="left">&nbsp;请填写您的真实信息</td>
							</tr>
							<tr>
								<td height="25" align="right"><font color="#996633">家庭住址：</font>
								</td>
								<td height="25" align="left"><input class="input7"
									type="text" name="address"
									value="${sessionScope.user.address }" /></td>
								<td height="25" align="left">&nbsp;请填写您的真实信息</td>
							</tr>
							<tr>
								<td height="25" align="right"><font color="#996633">电话号码：</font>
								</td>
								<td height="25" align="left"><input class="input7"
									type="text" name="phone" value="${sessionScope.user.phone }" /></td>
								<td height="25" align="left">&nbsp;请填写您的真实信息(格式为02411111111或13911111111)</td>
							</tr>
							<tr>
								<td height="25" align="right"><font color="#996633">电子邮箱：</font>
								</td>
								<td height="25" align="left"><input class="input7"
									type="text" name="email" value="${sessionScope.user.email }" /></td>
								<td height="25" align="left">&nbsp;请填写您有效的邮件地址，以便于我们为您提供有效的服务。</td>
							</tr>
							<tr>
								<input type="hidden" name="id" value="${sessionScope.user.id }">
								<td colspan="3" align="center" bordercolorlight="#C0C0C0"
									bordercolordark="#C0C0C0" height="25"><input type="submit"
									value="修改" /></td>
							</tr>
						</table>
					</div>
				</form>
			</td>
		</tr>
		<tr>
			<td height="10">&nbsp;</td>
		</tr>
		<tr>
		</tr>

	</table>



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
	<!-- service-area end --> <!-- footer start --> <footer
		class="black-bg">
		<div class="footer-top-area ptb-60">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-4">
						<div class="footer-widget">
							<h3 class="footer-title">Contact info</h3>
							<div class="footer-contact">
								<ul>
									<li><em class="fa fa-map-marker"></em>XXX <span>XXX</span></li>
									<li><em class="fa fa-phone"></em>Telephones: XXX <span>Fax:
											XXX</span></li>
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
								<li><a href="MyPersonalPage.jsp">My personal info</a></li>
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
								<li><a href="MyPersonalPage.jsp">My personal info</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-4 footer-sm">
						<div class="footer-widget">
							<h3 class="footer-title">OPENING TIME</h3>
							<div class="footer-time">
								<p>
									<span class="ft-content"><span class="day">Monday
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
								</p>
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
	</footer> <!-- footer end --> <!-- Modal -->
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
							<a href="single-product.html">Phasellus Vel Hendrerit</a>
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
	<!-- Modal end --> <!-- jquery latest version --> <script
		src="js/vendor/jquery-1.12.0.min.js"></script> <!-- Bootstrap framework js -->
	<script src="js/bootstrap.min.js"></script> <!-- ajax-mail js --> <script
		src="js/ajax-mail.js"></script> <!-- owl.carousel js --> <script
		src="js/owl.carousel.min.js"></script> <!-- owl.carousel js --> <script
		src="js/jquery-ui.min.js"></script> <!-- jquery.nivo.slider js --> <script
		src="js/jquery.nivo.slider.pack.js"></script> <!-- All js plugins included in this file. -->
	<script src="js/plugins.js"></script> <!-- Main js file that contents all jQuery plugins activation. -->
	<script src="js/main.js"></script>
</body>
</html>