<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bản css đã nén của bootstrap 4, nên đặt trong cặp thẻ head -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/KingdomWatch.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/account.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/giohang.css">
<link href="${pageContext.request.contextPath}/css/CSSElement.css"
	rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/a3633fc35f.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Đăng nhập</title>
</head>

<body>

	<!-- HEADER -->
	<header>
		<nav>
			<a id="Logo" href="${pageContext.request.contextPath}/"><img
				src="${pageContext.request.contextPath}/Image/Header/Logo.svg"
				alt="Logo"></a> <a class="NavElement" id="MainNavElement" href="${pageContext.request.contextPath}/"
				id="underline_none">
				<p>Trang chủ</p>
			</a>
			<div class="NavElement">
				<p>Đồng hồ</p>
				<div class="dropdown-content">
					<a href="${pageContext.request.contextPath}/donghonam">Đồng hồ nam</a> 
					<a href="${pageContext.request.contextPath}/donghonu">Đồng hồ nữ</a>
				</div>
			</div>
			<a class="NavElement" href="${pageContext.request.contextPath}/blog">
                <p>Tin tức</p>
            </a>
            <div class="NavElement" >
                <p>Liên hệ</p>
                <div class="dropdown-content">
                  <a href="${pageContext.request.contextPath}/contactinfo">Thông tin liên hệ</a>
                  <a href="${pageContext.request.contextPath}/contact">Đơn liên hệ</a>
                </div>
            </div>
			<%@ include file="./partials/user.jsp"%>
		</nav>
		<div class="PseudoNav">
			<a id="Logo" href=""><img
				src="${pageContext.request.contextPath}/Image/Header/Logo.svg"
				alt="Logo"></a>
		</div>

		<div id="TransparentGlass"></div>
		<div id="cart-panel">
			<div class="cart-panel-header">
				<div>GIỎ HÀNG CỦA BẠN</div>
				<img
					src="${pageContext.request.contextPath}/images/icon/times-solid.svg"
					id="cart-panel-close">
			</div>
			<div class="cart-panel-body">
				<div ><p><span>Hiện tại chưa có sản phẩm nào trong giỏ hàng
					của bạn </span></p></div>
				<button id="continue-shopping">TIẾP TỤC MUA SẮM</button>
				<div id="cart-item-list"></div>
				<div class="payment">
					<div class="price-to-pay">
						<p>THÀNH TIỀN</p>
						<p class="total-price">
							<span id="price">3.099.000</span> VNĐ
						</p>
						<p id="total-price-hidden">0</p>
					</div>
					<form method="GET" id="submit-payment-form"
						action="${pageContext.request.contextPath}/thanhtoan" style="display:none">
						<input type="text" id="query" name="query" value="123" />
					</form>
					<button id="pay-btn">Thanh toán</button>
				</div>
			</div>
			<div class="cart-panel-footer">
				<div>
					<img
						src="${pageContext.request.contextPath}/images/icon/iconmonstr-shield-28.svg"><span>Bảo
						hành 6 tháng lỗi nhà sản xuất</span>
				</div>
				<div>
					<img
						src="${pageContext.request.contextPath}/images/icon/iconmonstr-delivery-6.svg"><span>Freeship
						với đơn hàng > 500K</span>
				</div>
			</div>
		</div>

				
	</header>
	<!--account-starts-->
	<div>
		<div class="account">
			<div class="account_heading">
				<h2>TÀI KHOẢN</h2>
			</div>
			<div class="row account_main">
				<div class="col-md-6 account_shadow acount " id="form_login">
					<div class="login">
						<h3 align="center">Đăng Nhập</h3>
						<form class="register_main account_left" action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'
							>
							<div>
								<div class="account_register_content">

									<input name="username" placeholder="username" type="text"
										tabindex="3" required="" id="email_register"
										autocompleted="off" />
									
									<input name="password" placeholder="Mật khẩu"
										type="password" tabindex="4" required=""
										id="password_register" autocompleted="off" />
									<label>Remember Me?</label>
            						<input type="checkbox" name="remember-me" />
								</div>
								<div class="div_btn_register">
									<button type="submit" class="account_button" id="btn_register">Đăng
										Nhập</button>
								</div>
							</div>
							<div class="clearfix"></div>
						</form>
						<div class="text-center"><a href="${pageContext.request.contextPath}/admin/forgot-password" style="color: #333333;">Quên mật khẩu</a></div>
						<c:if test="${error==true}">
							<label class="text-danger">Mật khẩu hoặc tài khoản của bạn không chính xác vui lòng kiểm tra lại!!</label>
						</c:if>
						
						
					</div>
				</div>
				<div class="col-md-6 account_new pl-5">
					<div>
						<h3> Tạo Tài Khoản mới</h3>
						<p>Bạn có thẻ tạo account admin mới tại đây? Vui lòng đăng nhập để hoàn thành các tác vụ </p>
						<div class="div_btn_new_acc">
							<button type="submit" class="account_button_new"
								onclick="location.href='${pageContext.request.contextPath}/admin/register'">Tạo tài khoản
								mới</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--account-end-->

	<!-- ĐĂNG KÍ NHẬN TIN MỚI -->
	<section id="NewInformation">
		<h2>Đăng kí nhận tin mới</h2>
		<p>Nhận các tin tức về chương trình và khuyến mãi sớm nhất</p>
		<div id="NewInfoInput">
			<input class="NewInfoInputElement" type="text" id="NameInput"
				placeholder="Họ tên"> <input class="NewInfoInputElement"
				type="text" id="EmailInput" placeholder="Email">
			<div class="NewInfoInputElement">
				<p>ĐĂNG KÍ</p>
			</div>
		</div>
	</section>

	<!-- FOOTER -->
	<div style="background-color: lightgrey;">
		<div id="Footer">
			<div class="FooterColumn">
				<div class="FooterColumnContent">
					<h3>HỖ TRỢ KHÁCH HÀNG</h3>
					<div>
						<p>Các câu hỏi thường gặp</p>
						<p>Gửi yêu cầu hỗ trợ</p>
						<p>Hướng dẫn đặt hàng</p>
						<p>Phương thức thanh toán</p>
					</div>
				</div>
			</div>
			<div class="FooterColumn">
				<div class="FooterColumnContent">
					<h3>LIÊN HỆ</h3>
					<div>
						<p>
							<img class="Icon"
								src="${pageContext.request.contextPath}/Image/Location.svg">
							Khu phố 6, P.Linh Trung, Q.Thủ Đức, Tp.Hồ Chí Minh.
						</p>
						<p>
							<img class="Icon"
								src="${pageContext.request.contextPath}/Image/Phone.svg">
							(028) 372 52002
						</p>
						<p>
							<img class="Icon"
								src="${pageContext.request.contextPath}/Image/Fax.svg" alt="">
							(028) 372 52148
						</p>
						<a href="mailto:example@email.com"> <img class="Icon"
							src="Image/Mail.svg" alt=""> watchkingdom@gmail.com
						</a>
					</div>
				</div>
			</div>
			<div class="FooterColumn">
				<div class="FooterColumnContent">
					<h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
					<div>
						<a href="#"><img class="SocialNetWorkIcon"
							src="${pageContext.request.contextPath}/images/Contact With Us/social-facebook-circle-512.webp">
							Facebook</a> <a href="#"><img class="SocialNetWorkIcon"
							src="${pageContext.request.contextPath}/images/Contact With Us/twitter_circle-512.webp">
							Twitter</a> <a href="#"><img class="SocialNetWorkIcon"
							src="${pageContext.request.contextPath}/images/Contact With Us/34_google_plus-512.webp">
							Google</a> <a href="#"><img class="SocialNetWorkIcon"
							src="${pageContext.request.contextPath}/images/Contact With Us/768px-Instagram_icon.png">
							Instagram</a>
					</div>
				</div>
			</div>
			<div class="FooterColumn">
				<div class="FooterColumnContent">
					<h3>PHƯƠNG THỨC THANH TOÁN</h3>
					<div class="FooterPayment">
						<img class="PaymentIcon"
							src="${pageContext.request.contextPath}/Image/ViettelPay.svg">
						<img class="PaymentIcon"
							src="${pageContext.request.contextPath}/Image/ACB.svg"> <img
							class="PaymentIcon"
							src="${pageContext.request.contextPath}/Image/AirPay.svg">
						<img class="PaymentIcon"
							src="${pageContext.request.contextPath}/Image/MasterCard.svg">
						<img class="PaymentIcon"
							src="${pageContext.request.contextPath}/Image/Momo.svg"> <img
							class="PaymentIcon"
							src="${pageContext.request.contextPath}/Image/Paypal.svg">
					</div>
				</div>
			</div>
		</div>
		<div align="center">
			<hr style="margin-bottom: 15px;">
		</div>
		<div class="footer__last-item">
			<p class="footer__last-line" style="padding-bottom: 15px;">
				<span class="copyright">Copyright</span> "&nbsp;©&nbsp; 2010-2021
				Watch Kingdom Q.P.S." <span class="rights-reserved">All
					rights reserved.</span>
			</p>
		</div>
	</div>

	<script src="${pageContext.request.contextPath}/JS/KingdomWatch.js"></script>
	<script src="${pageContext.request.contextPath}/JS/account.js"></script>
	<script src="${pageContext.request.contextPath}/JS/jquery-3.5.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/JS/Run-snow.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>