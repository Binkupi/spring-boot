<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/KingdomWatch.css">
    <link rel="stylesheet" href="css/footer.css"> 
    <link href="css/CSSElement.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giohang.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Liên hệ</title>
</head>

<body>

    <!-- HEADER -->
    <header>
        <nav>
            <a id="Logo" href="${pageContext.request.contextPath}/"><img src="Image/Header/Logo.svg" alt="Logo"></a>
            <a class="NavElement" href="${pageContext.request.contextPath}/" id="underline_none">
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
            <div class="NavElement" id="MainNavElement">
                <p>Liên hệ</p>
                <div class="dropdown-content">
                  <a href="${pageContext.request.contextPath}/contactinfo">Thông tin liên hệ</a>
                  <a href="${pageContext.request.contextPath}/contact" id="MainNavElement">Đơn liên hệ</a>
                </div>
            </div>
            <div class="NavElement list-item-icon" >           
                    <i href="" class="icon-link" id="cart-panel-open">
                      <i class="fas fa-cart-plus icon"></i>
                      <div>0</div>
                    </i>
            </div>
          
        </nav>
        <div class="PseudoNav">
            <a id="Logo" href=""><img src="Image/Header/Logo.svg" alt="Logo"></a>
        </div>
		
        <div id="TransparentGlass"></div>
        <div id="cart-panel">
            <div class="cart-panel-header">
                <div>GIỎ HÀNG CỦA BẠN</div>
                <img src="${pageContext.request.contextPath}/images/icon/times-solid.svg" id="cart-panel-close">
            </div>
            <div class="cart-panel-body">
                <div id="no-item">Hiện tại chưa có sản phẩm nào trong giỏ hàng của bạn</div>
                <button id="continue-shopping">TIẾP TỤC MUA SẮM</button>
                <div id="cart-item-list">
                </div>
                <div class="payment">
                  <div class="price-to-pay">
                    <p>THÀNH TIỀN</p>
                    <p class="total-price"><span id="price">3.099.000</span> VNĐ</p>
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
                <div><img src="${pageContext.request.contextPath}/images/icon/iconmonstr-shield-28.svg"><span>Bảo hành 6 tháng lỗi nhà sản xuất</span></div>
                <div><img src="${pageContext.request.contextPath}/images/icon/iconmonstr-delivery-6.svg"><span>Freeship với đơn hàng > 500K</span></div>
            </div>
        </div>


        
        <div id="Banner_Contact">
            <div id="BannerContent">
                <h1>Đồng hồ chất, chuẩn lịch lãm</h1>
                <h2>Bắt đầu trải nghiệm đẳng cấp mua sắm</h2>
                <a id="ShoppingButton" href="${pageContext.request.contextPath}/donghonam">Khám phá ngay</a>
            </div>
        </div>
    </header>

    <!-- LIÊN HỆ -->
    <div id="Contact">
        <div id="BackgroundContact">
            <div id="BackgroundContactPlate"></div>
            <div id="BackgroundContactContent">
                <div class="BackgroundContactContentElement">
                    <div>
                        <img src="Image/Contact/Location.svg" alt="Location">
                        <p>Địa chỉ</p>
                    </div>
                    <p>Khu phố 6, phường Linh Trung, quận Thủ Đức, thành phố Hồ Chí Minh</p>
                </div>
                <div class="BackgroundContactContentElement">
                    <div>
                        <img src="Image/Contact/Phone.svg" alt="Phone">
                        <p>Số điện thoại</p>
                    </div>
                    <p>(028) 372 52002</p>
                </div>
                <div class="BackgroundContactContentElement">
                    <div>
                        <img src="Image/Contact/Mail.svg" alt="Mail">
                        <p>Email</p>
                    </div>
                    <p>watchkingdom@gmail.com</p>
                </div>
            </div>
        </div>
        <div id="ContactForm">
            <h2>Điền thông tin của bạn</h2>
            <form id="ContactFormInputContainer">
                <div>
                    <label class="ContactFormLabel" for="ContactFormNameInput">Họ tên *</label>
                    <input type="text" name="ContactFormNameInput" id="ContactFormNameInput" class="ContactFormInput">
                    <p class="ContactFormError" id="ContactFormNameError">Nhập tên của bạn <img src="Image/Contact/ExclamationMark.svg" alt="ExclamationMark"></p>
                </div>
                <div>
                    <label class="ContactFormLabel" for="ContactFormMailInput">Email *</label>
                    <input type="email" name="ContactFormMailInput" id="ContactFormMailInput" class="ContactFormInput">
                    <p class="ContactFormError" id="ContactFormMailError">Nhập email của bạn <img src="Image/Contact/ExclamationMark.svg" alt="ExclamationMark"></p>
                </div>
                <div>
                    <label class="ContactFormLabel" for="ContactFormPhoneInput">Số điện thoại</label>
                    <input type="number" name="ContactFormPhoneInput" id="ContactFormPhoneInput" class="ContactFormInput">
                    <p class="ContactFormError" id="ContactFormPhoneError">Số điện thoại không hợp lệ <img src="Image/Contact/ExclamationMark.svg" alt="ExclamationMark"></p>
                </div>
                <div>
                    <label class="ContactFormLabel" for="ContactFormNoticeInput">Nội dung *</label>
                    <textarea name="ContactFormNoticeInput" id="ContactFormNoticeInput" class="ContactFormInput"></textarea>
                    <p class="ContactFormError" id="ContactFormNoticeError">Nhập nội dung của bạn <img src="Image/Contact/ExclamationMark.svg" alt="ExclamationMark"></p>
                </div>
            </form>
            <button type="submit">Gửi yêu cầu</button>
            <p id="ContactNotice">Thông tin của bạn đã được ghi nhận <br> Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất</p>
        </div>
    </div>

    <!-- ĐĂNG KÍ NHẬN TIN MỚI -->
    <section id="NewInformation">
        <h2>Đăng kí nhận tin mới</h2>
        <p>Nhận các tin tức về chương trình và khuyến mãi sớm nhất</p>
        <div id="NewInfoInput">
            <input class="NewInfoInputElement" type="text" id="NameInput" placeholder="Họ tên">
            <input class="NewInfoInputElement" type="text" id="EmailInput" placeholder="Email">
            <div class="NewInfoInputElement"><p>ĐĂNG KÍ</p></div>
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
                        <p> <img class="Icon" src="Image/Location.svg"> Khu phố 6, P.Linh Trung, Q.Thủ Đức, Tp.Hồ Chí Minh.
                        </p>
                        <p> <img class="Icon" src="Image/Phone.svg"> (028) 372 52002</p>
                        <p> <img class="Icon" src="Image/Fax.svg" alt=""> (028) 372 52148</p>
                        <a href="mailto:example@email.com"> <img class="Icon" src="Image/Mail.svg" alt="">
                            watchkingdom@gmail.com</a>
                    </div>
                </div>
            </div>
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
                    <div>
                        <a href="#"><img class="SocialNetWorkIcon"
                                src="images/Contact With Us/social-facebook-circle-512.webp"> Facebook</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="images/Contact With Us/twitter_circle-512.webp">
                            Twitter</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="images/Contact With Us/34_google_plus-512.webp">
                            Google</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="images/Contact With Us/768px-Instagram_icon.png">
                            Instagram</a>
                    </div>
                </div>
            </div>
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>PHƯƠNG THỨC THANH TOÁN</h3>
                    <div class="FooterPayment">
                        <img class="PaymentIcon" src="Image/ViettelPay.svg">
                        <img class="PaymentIcon" src="Image/ACB.svg">
                        <img class="PaymentIcon" src="Image/AirPay.svg">
                        <img class="PaymentIcon" src="Image/MasterCard.svg">
                        <img class="PaymentIcon" src="Image/Momo.svg">
                        <img class="PaymentIcon" src="Image/Paypal.svg">
                    </div>
                </div>
            </div>
        </div>
        <div align="center">
            <hr style="margin-bottom: 15px;">
        </div>
        <div class="footer__last-item">
            <p class="footer__last-line" style="padding-bottom: 15px;"><span class="copyright">Copyright</span>
                "&nbsp;©&nbsp; 2010-2021 Watch Kingdom Q.P.S."
                <span class="rights-reserved">All rights reserved.</span>
            </p>
        </div>
    </div>

    <script src="JS/KingdomWatch.js"></script>
    <script src="JS/Run-snow.js"></script>
    <script src="${pageContext.request.contextPath}/JS/giohang.js"></script>
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