<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<link href="${pageContext.request.contextPath}/css/CSSElement.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/Divide-Column.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/giohang.css">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<script src="https://kit.fontawesome.com/a3633fc35f.js"
	crossorigin="anonymous"></script>

<title>WatchKingdom store - Đồng hồ chính hãng | Watch Kingdom</title>
<meta name="description"
	content="WatchKingdom là một trang web bán các loại đồng hồ rất đa dạng về tầm giá cũng như thương hiệu với một mức giá rất hợp lí.">
<meta name="keywords"
	content="Đồng hồ thời trang WatchKingdom, Đồng hồ ngoại nhập Watch Kingdom, Đồng hồ có chất lượng tốt nhất trong phân khúc 10tr, Đồng hồ kính sapphire, Đồng hồ dây da" />
<meta name="ROBOTS" content="index,follow" />
<meta http-equiv="content-language" content="vi">
<meta charset="UTF-8">
<meta property="og:title"
	content="WatchKingdom store - Đồng hồ chính hãng | Watch Kingdom" />
<meta property="og:type" content="store" />
<meta property="og:url"
	content="https://huuphat1908.github.io/WatchKingdom/Index.html" />
<meta property="og:image"
	content="https://huuphat1908.github.io/WatchKingdom/Image/Header/Logo.svg" />
<meta name="geo.region" content="VN" />
<meta name="geo.placename" content="Thu Duc City" />
<meta name="geo.position" content="10.869699;106.803153" />
<meta name="ICBM" content="10.869699, 106.803153" />

</head>

<body>
	<!-- HEADER -->
	<header>
		<nav>
			<a id="Logo" href="${pageContext.request.contextPath}/"><img
				src="${pageContext.request.contextPath}/Image/Header/Logo.svg"
				alt="LogoWatchKingdom"></a> <a id="MainNavElement"
				class="NavElement" href="${pageContext.request.contextPath}/">
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

			

			</div>
			<div class="NavElement list-item-icon">
				<i href="" class="icon-link" id="cart-panel-open"> <i
					class="fas fa-cart-plus icon"></i>
					<div>0</div>
				</i>
			</div>
			<div class="NavElement" id="Search">
				<img
					src="${pageContext.request.contextPath}/Image/Header/SearchRight.svg"
					alt="Search">
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
				<div id="no-item">Hiện tại chưa có sản phẩm nào trong giỏ hàng
					của bạn</div>
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

		<form id="SearchContent" action="${pageContext.request.contextPath}/timkiem" method="GET">
			<div>
				<img src="./Image/Header/Xbutton.svg" alt="XButton">
			</div>
			<div>
				<img src="./Image/Header/SearchLeft.svg" alt="Search"> <input
					type="text" id="SearchInput" placeholder="Tìm kiếm ..."
					name="keyword" />
				<button class="btn btn-primary mr-3" type="submit" value="Submit">Tìm
					kiếm</button>
			</div>
		</form>

		
		<div id="Banner">
			<div id="BannerContent">
				<h1>Đồng hồ chất, chuẩn lịch lãm</h1>
				<h2>Bắt đầu trải nghiệm đẳng cấp mua sắm</h2>
				<a id="ShoppingButton" href="${pageContext.request.contextPath}/donghonam">Khám phá ngay</a>
			</div>
		</div>
	</header>

	<!-- ĐỒNG HỒ NAM, ĐỒNG HỒ NỮ -->
	<section id="MenAndWomen">
		<div class="Column">
			<a href="${pageContext.request.contextPath}/donghonam"><img class="ManWomanImg"
				src="${pageContext.request.contextPath}/Image/MenAndWomenWatch/MenWatch.PNG"
				alt="Đồng hồ nam"></a>
			<div class="Content">
				<a class="ManWoman" href="${pageContext.request.contextPath}/donghonam">Đồng hồ nam</a> <br>
				<a class="BuyNow" href="${pageContext.request.contextPath}/donghonam">Mua ngay <img
					class="RightArrow"
					src="${pageContext.request.contextPath}/Image/MenAndWomenWatch/RightArrow.svg"
					alt="Khám phá đồng hồ nam"></a>
			</div>
		</div>
		<div class="Column">
			<a href="${pageContext.request.contextPath}/donghonu"><img class="ManWomanImg"
				src="${pageContext.request.contextPath}/Image/MenAndWomenWatch/WomenWatch.PNG"
				alt="Women"></a>
			<div class="Content">
				<a class="ManWoman" href="${pageContext.request.contextPath}/donghonu">Đồng hồ nữ</a> <br> <a
					class="BuyNow" href="${pageContext.request.contextPath}/donghonu">Mua ngay <img
					class="RightArrow"
					src="${pageContext.request.contextPath}/Image/MenAndWomenWatch/RightArrow.svg"></a>
			</div>
		</div>
	</section>

	<!-- BEST SELLER -->
	<div id="Product_information">
		<div align="center" id="Men">
			<div>
				<p class="MenBestSellers">Đồng hồ nam bán chạy nhất</p>
				<a href="${pageContext.request.contextPath}/donghonam">Khám phá thêm >></a>
			</div>
			<div class="row  mt-4 ml-4 mr-4 ">
				<c:forEach var="watch" items="${menWatchs}">
					<c:if test="${watch.sale==0}">
						<div class="col-sm-3 pb-4">
							<div class="Normal-Product" id="sanPham${watch.id}"
								align='center'>
								<a href="${pageContext.request.contextPath}/watchs/${watch.id }"> <img
									class="img-responsive zoom-img"
									src=${pageContext.request.contextPath}/${watch.img}
									alt=${watch.name } />
								</a>
								<div class="product-bottom">
									<h3>${watch.name }</h3>
									<h4 style="display: none" class="id-watch">${ watch.id}</h4>
									<p>Khám phá ngay</p>
									<h4>
										<span class="item_price">${watch.price} VND</span>
									</h4>
									<div class="product-price-hidden">${watch.price}</div>
									<!--button Mua hàng-->
									<button class="Button-Buy">
										<i class="fas fa-cart-plus"></i><span>Chọn mua</span>
									</button>
								</div>
								<div class="FvIcon">
									<span><i class="far fa-heart fa-1x"></i></span>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${watch.sale!=0}">
						<div class="col-sm-3 pb-4">
							<div class="Sale-Product" id="sanPham${watch.id}" align='center'>
								<a href="${pageContext.request.contextPath}/watchs/${watch.id }"> <img
									class="img-responsive zoom-img"
									src=${pageContext.request.contextPath}/${watch.img}
									alt="${wath.name}" />
								</a>
								<div class="product-bottom">
									<h3>${watch.name }</h3>
									<h4 style="display: none" class="id-watch">${ watch.id}</h4>
									<p>Khám phá ngay</p>
									<h4>
										<span class="item_price">${watch.price} VND</span>
									</h4>
									<div class="product-price-hidden">${watch.price}</div>
									<!--button Mua hàng-->
									<button class="Button-Buy">
										<i class="fas fa-cart-plus"></i><span>Chọn mua</span>
									</button>
								</div>
								<div class="Discount">
									<span>${watch.sale}%</span>
								</div>
								<div class="FvIcon">
									<span><i class="far fa-heart fa-1x"></i></span>
								</div>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</div>
			<div align="center" id="Women">
				<div>
					<p class="WomenBestSellers">Đồng hồ nữ bán chạy nhất</p>
					<a href="${pageContext.request.contextPath}/donghonu">Khám phá thêm >></a>
				</div>
				<div class="row mt-4 ml-4 mr-4 mb-4">
					<c:forEach var="watch" items="${womenWatchs}">
						<c:if test="${watch.sale==0}">
							<div class="col-sm-3">
								<div class="Normal-Product" id="sanPham${watch.id}"
									align='center'>
									<a href="${pageContext.request.contextPath}/watchs/${watch.id}"> <img
										class="img-responsive zoom-img"
										src=${pageContext.request.contextPath}/${watch.img}
										alt=${watch.name } />
									</a>
									<div class="product-bottom">
										<h3>${watch.name }</h3>
										<h4 style="display: none" class="id-watch">${ watch.id}</h4>
										<p>Khám phá ngay</p>
										<h4>
											<span class="item_price">${watch.price} VND</span>
										</h4>
										<div class="product-price-hidden">${watch.price}</div>
										<!--button Mua hàng-->
										<button class="Button-Buy">
											<i class="fas fa-cart-plus"></i><span>Chọn mua</span>
										</button>
									</div>
									<div class="FvIcon">
										<span><i class="far fa-heart fa-1x"></i></span>
									</div>
								</div>
							</div>
						</c:if>
						<c:if test="${watch.sale!=0}">
							<div class="col-sm-3">
								<div class="Sale-Product" id="sanPham${watch.id}" align='center'>
									<a href="${pageContext.request.contextPath}/watchs/${watch.id }"> <img
										class="img-responsive zoom-img"
										src=${pageContext.request.contextPath}/${watch.img}
										alt="${wath.name}" />
									</a>
									<div class="product-bottom">
										<h3>${watch.name }</h3>
										<h4 style="display: none" class="id-watch">${ watch.id}</h4>
										<p>Khám phá ngay</p>
										<h4>
											<span class="item_price">${watch.price} VND</span>
										</h4>
										<div class="product-price-hidden">${watch.price}</div>
										<!--button Mua hàng-->
										<button class="Button-Buy">
											<i class="fas fa-cart-plus"></i><span>Chọn mua</span>
										</button>
									</div>
									<div class="Discount">
										<span>${watch.sale}%</span>
									</div>
									<div class="FvIcon">
										<span><i class="far fa-heart fa-1x"></i></span>
									</div>
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="story" align="center">
			<div>
				<div>
					<img class="logo"
						src="${pageContext.request.contextPath}/Image/Header/Logo.svg"
						alt="logo">
				</div>
				<h3
					style="text-align: center; margin-top: 20px; margin-bottom: 20px;"
					class="story-title">THE STORY OF WATCH KINGDOM</h3>
				<p class="text" style="width: 60%">Cuối năm 2020, 3 chàng trai
					đam mê Startup và Đồng hồ quyết định thành lập Watch Kingdom, nhưng
					ngay từ đầu, chúng tôi đã biết rằng: Watch Kingdom sinh ra với một
					sứ mệnh lớn lao hơn, không chỉ dừng lại là một thương hiệu đồng hồ.
					Chúng tôi muốn mang tới một nguồn cảm hứng, một sự thay đổi về tư
					duy, về suy nghĩ và chính những cái chúng tôi gọi là trải nghiệm
					cho người trẻ.</p>
				<div>
					<img src="images/storyLarge-8J9.png">
				</div>
			</div>
		</div>

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
								src="Image/Mail.svg" alt="Icon Mail">
								watchkingdom@gmail.com
							</a>
						</div>
					</div>
				</div>
				<div class="FooterColumn">
					<div class="FooterColumnContent">
						<h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
						<div>
							<a href="#"><img class="SocialNetWorkIcon"
								src="images/Contact With Us/social-facebook-circle-512.webp">
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


		<!-- SCRIPT -->
		<script
			src="${pageContext.request.contextPath}/JS/jquery-3.5.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/JS/giohang.js"></script>
		<script src="${pageContext.request.contextPath}/JS/JSElement.js"></script>
		<script src="${pageContext.request.contextPath}/JS/KingdomWatch.js"></script>
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