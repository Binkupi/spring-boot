<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="css/KingdomWatch.css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giohang.css">
    <link href="css/CSSElement.css" rel="stylesheet" type="text/css">
    <link href="css/Divide-Column.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>

    <title>WatchKingdom store - Đồng hồ chính hãng | Watch Kingdom</title>
    <meta name="description" content="WatchKingdom là một trang web bán các loại đồng hồ rất đa dạng về tầm giá cũng như thương hiệu với một mức giá rất hợp lí.">
    <meta name="keywords" content="Đồng hồ thời trang WatchKingdom, Đồng hồ ngoại nhập Watch Kingdom, Đồng hồ có chất lượng tốt nhất trong phân khúc 10tr, Đồng hồ kính sapphire, Đồng hồ dây da"/>
    <meta name="ROBOTS" content="index,follow"/>
    <meta http-equiv="content-language" content="vi">
    <meta charset="UTF-8">
    <meta property="og:title" content="WatchKingdom store - Đồng hồ chính hãng | Watch Kingdom" />
    <meta property="og:type" content="store" />
    <meta property="og:url" content="https://huuphat1908.github.io/WatchKingdom/Index.html" />
    <meta property="og:image" content="https://huuphat1908.github.io/WatchKingdom/Image/Header/Logo.svg" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.placename" content="Thu Duc City" />
    <meta name="geo.position" content="10.869699;106.803153" />
    <meta name="ICBM" content="10.869699, 106.803153" />

</head>

<body>
    <!-- HEADER -->
    <header>
        <nav>
            <a id="Logo" href="${pageContext.request.contextPath}/"><img src="Image/Header/Logo.svg" alt="LogoWatchKingdom"></a>
            <a class="NavElement" href="${pageContext.request.contextPath}/">
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
                  <a href="${pageContext.request.contextPath}/contactinfo" id="MainNavElement">Thông tin liên hệ</a>
                  <a href="${pageContext.request.contextPath}/contact">Đơn liên hệ</a>
                </div>
            </div>
           
            <div class="NavElement list-item-icon" >           
                    <i href="" class="icon-link" id="cart-panel-open">
                      <i class="fas fa-cart-plus icon"></i>
                      <div>0</div>
                    </i>
            </div>
            
        </nav>
        <%@ include file="./partials/user.jsp"%>
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

    </header>

    <section class="StoreAddress container-fluid">
        <h4>HỆ THỐNG CỬA HÀNG</h4>
        <section class="StoreAddressCard container">
            <img src="Image/ContactInfo/WatchKingdom.jpg" alt="Cửa hàng đồng hồ WatchKingdom">
            <section class="StoreAddressCardContent container">
                <p><span>Chi nhánh:</span> Khu phố 6, phường Linh Trung, quận Thủ Đức, thành phố Hồ Chí Minh</p>
                <p><span>Điện thoại:</span> (028) 372 52001</p>
                <p><span>Mail:</span> watchkingdom@gmail.com</p>
                <p><span>Bán các hãng:</span> Orient, Hublot, Rolex, Samsung, Casio, Apple, Seiko, Citizen, Daniel Wellington, Curnon, Fossil, G-Shock, Edifice, Skmei, Mini Focus, MVW, Titan, Weide, Nakzen, Micheal Kors</p>
            </section>
        </section>
    </section>

    <section class="StoreAddressNotFirst container-fluid">
        <section class="StoreAddressCard container">
            <img src="Image/ContactInfo/Store2.webp" alt="Cửa hàng đồng hồ WatchKingdom">
            <section class="StoreAddressCardContent container">
                <p><span>Chi nhánh:</span>phường Bến Thành, quận 1, thành phố Hồ Chí Minh</p>
                <p><span>Điện thoại:</span> (028) 372 52002</p>
                <p><span>Mail:</span> watchkingdom@gmail.com</p>
                <p><span>Bán các hãng:</span> Orient, Hublot, Rolex, Samsung, Casio, Apple, Seiko, Citizen, Daniel Wellington, Curnon, Fossil, G-Shock, Edifice, Skmei, Mini Focus, MVW, Titan, Weide, Nakzen, Micheal Kors</p>
            </section>
        </section>
    </section>

    <section class="container" style="margin-top: 1rem; padding: 0 0;">
        <img style="width: 100%;" src="Image/ContactInfo/dongho.jpg" alt="Chứng nhận đại lí chính hãng và các giải thưởng cửa hàng WatchKingdom đã đạt được">
    </section>

    <section class="container WatchKingdomProps">
        <div class="container-fluid WatchKingdomPropsTitle">
            <h4>TẠI SAO NÊN MUA HÀNG TẠI WATCHKINGDOM ?</h4>
            <p>Chúng tôi cam kết mang lại những giá trị cao nhất cho khách hàng khi đến với Đồng Hồ Watchkingdom</p>
        </div>
        <div class="container-fluid WatchKingdomPropsContainerCard">
            <div class="row">
                <div class="col-sm WatchKingdomPropsCard">
                    <p><img src="Image/ContactInfo/NumberOne.png" alt="Uy tín hàng đầu">UY TÍNH HÀNG ĐẦU</p>
                    <p>Với kinh nghiệm hơn 20 năm trong ngành đồng hồ, WatchKingdom tự tin đem đến cho bạn những chiếc đồng hồ tốt nhất cùng trải nghiệm tuyệt vời khi mua đồng hồ tại WatchKingdom.</p>
                </div>
                <div class="col-sm WatchKingdomPropsCard">
                    <p><img src="Image/ContactInfo/Star.png" alt="Hậu mãi hàng đầu">HẬU MÃI HÀNG ĐẦU</p>
                    <p>Chế độ bảo hành lên đến 5 năm cho tất cả đồng hồ chính hãng mua tại WatchKingdom - Đầu Tiên Và Duy Nhất Tại Việt Nam.</p>
                </div>
                <div class="col-sm WatchKingdomPropsCard">
                    <p><img src="Image/ContactInfo/Reverse.png" alt="Đổi hàng dễ dàng">ĐỔI HÀNG DỄ DÀNG</p>
                    <p>Đồng hồ sai kích cỡ? Màu sắc không hợp với bạn? Bạn mua làm quà tặng người thân nhưng người nhận không ưng ý? Đừng lo! Bạn có thể đổi hàng trong vòng 7 ngày.</p>
                </div>
            </div>

            <div class="row" style="margin-top: 1rem;">
                <div class="col-sm WatchKingdomPropsCard">
                    <p><img src="Image/ContactInfo/NumberOne.png" alt="Uy tín hàng đầu">1 ĐỔI 1</p>
                    <p>Chế độ 1 đổi 1 trong tuần đầu tiên nếu có bất kỳ lỗi gì do nhà sản xuất.</p>
                </div>
                <div class="col-sm WatchKingdomPropsCard">
                    <p><img src="Image/ContactInfo/Star.png" alt="Hậu mãi hàng đầu">THANH TOÁN DỄ DÀNG (COD)</p>
                    <p>Bạn chỉ phải trả tiền khi đã nhận được hàng! Ngay Tại Nhà Bạn! Chuyển khoản trực tiếp (Cho những bạn muốn gửi quà cho bạn bè, người thân)</p>
                </div>
                <div class="col-sm WatchKingdomPropsCard">
                    <p><img src="Image/ContactInfo/Reverse.png" alt="Đổi hàng dễ dàng">THAY PIN MIỄN PHÍ</p>
                    <p>Thay pin miễn phí suốt đời cho tất cả các đồng hồ được WatchKingdom phân phối!</p>
                </div>
            </div>
        </div>
    </section>

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
                    <h3 class="h3">LIÊN HỆ</h3>
                    <div>
                        <p> <img class="Icon" src="Image/Location.svg"> Khu phố 6, P.Linh Trung, Q.Thủ Đức, Tp.Hồ Chí Minh.
                        </p>
                        <p> <img class="Icon" src="Image/Phone.svg"> (028) 372 52002</p>
                        <p> <img class="Icon" src="Image/Fax.svg" alt=""> (028) 372 52148</p>
                        <a href="mailto:example@email.com"> <img class="Icon" src="Image/Mail.svg" alt="Icon Mail">
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
            <p class="footer__last-line" style="padding-bottom: 15px; margin-bottom: 0px;"><span class="copyright">Copyright</span>
                "&nbsp;©&nbsp; 2010-2021 Watch Kingdom Q.P.S."
                <span class="rights-reserved">All rights reserved.</span>
            </p>
        </div>
    </div>

    <!-- SCRIPT -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="JS/jquery-3.5.1.min.js"></script>
    <script src="JS/JSElement.js"></script>
    <script src="JS/KingdomWatch.js"></script>
    <script src="${pageContext.request.contextPath}/JS/giohang.js"></script>
    <script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
    <script src="JS/Run-snow.js"></script> 
</body>

</html>