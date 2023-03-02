<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/KingdomWatch.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/footer.css"> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/account.css">
    <link href="${pageContext.request.contextPath}/css/CSSElement.css" rel="stylesheet" type="text/css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/giohang.css">
    <title>Đăng ký</title>
</head>

<body>

    <!-- HEADER -->
    <header>
        <nav>
            <a id="Logo" href="${pageContext.request.contextPath}/"><img src="${pageContext.request.contextPath}/Image/Header/Logo.svg" alt="Logo"></a>
            <a class="NavElement" href="${pageContext.request.contextPath}/" id="underline_none">
                <p>Trang chủ</p>
            </a>
            <div class="NavElement" id="MainNavElement">
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
            <a id="Logo" href=""><img src="${pageContext.request.contextPath}/Image/Header/Logo.svg" alt="Logo"></a>
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
                  <form  method="POST" id="submit-payment-form" action="thanhtoan" style="display:none">
                  	<input type="text" id="query" path="query" value="123"/>
                  </form>
                   <button id="pay-btn" >Thanh toán</button>
                </div>
            </div>
            <div class="cart-panel-footer">
                <div><img src="${pageContext.request.contextPath}/images/icon/iconmonstr-shield-28.svg"><span>Bảo hành 6 tháng lỗi nhà sản xuất</span></div>
                <div><img src="${pageContext.request.contextPath}/images/icon/iconmonstr-delivery-6.svg"><span>Freeship với đơn hàng > 500K</span></div>
            </div>
        </div>
 
    </header>
    <div class="register account_shadow">
    			<c:if test='${ success==true}'>
					<div style="display: inline-block" class="text-success"><b>Đã tạo mật khẩu mới cho tài khoản của bạn. Vui lòng kiểm tra tài khoản email để tiếp tục.</b></div>
					<div class="text-center"><a href="${pageContext.request.contextPath}/login" style="color: #333333;" class="btn btn-info"> Đăng nhập ngay</a></div>
				</c:if>
				<c:if test='${ success!=true}'>
	            <div class="account_heading">
	                <h2>Quên mật khẩu</h2>
	                <a href="${pageContext.request.contextPath}/login" style="color: #333333;">Đã có tài khoản? Đăng nhập ngay</a>
	            </div>
	            <form:form class="register_main account_left" method="post" action="${pageContext.request.contextPath}/admin/forgot-password" modelAttribute="emailAdmin">
					<div >
	                    <div class="account_register_content">	
                    		<label>Mời bạn nhập email tài khoản ở đây</label>	                    
                        	<form:input path="email" placeholder="Nhập email tại đây" type="text" tabindex="1" required="required" minlength="6" maxlength="50" id="email" autocompleted="off"/>
		                                                                                     
	                    </div>                    
	                    <div class="div_btn_register">
	                        <button type="submit" class="account_button" >Tạo mật khẩu mới</button>
	                    </div>
	                </div>
					
	            </form:form>
	            </c:if>
	            <c:if test='${ errorEmail==true}'>
					<div style="display: inline-block" class="text-danger">Email không được sử dụng làm account trên website. Quý khách vui lòng kiểm tra lại!!!</div>
				</c:if>
	           

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
                        <p> <img class="Icon" src="${pageContext.request.contextPath}/Image/Location.svg"> Khu phố 6, P.Linh Trung, Q.Thủ Đức, Tp.Hồ Chí Minh.
                        </p>
                        <p> <img class="Icon" src="${pageContext.request.contextPath}/Image/Phone.svg"> (028) 372 52002</p>
                        <p> <img class="Icon" src="${pageContext.request.contextPath}/Image/Fax.svg" alt=""> (028) 372 52148</p>
                        <a href="mailto:example@email.com"> <img class="Icon" src="${pageContext.request.contextPath}/Image/Mail.svg" alt="">
                            watchkingdom@gmail.com</a>
                    </div>
                </div>
            </div>
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>KẾT NỐI VỚI CHÚNG TÔI</h3>
                    <div>
                        <a href="#"><img class="SocialNetWorkIcon"
                                src="${pageContext.request.contextPath}/images/Contact With Us/social-facebook-circle-512.webp"> Facebook</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="${pageContext.request.contextPath}/images/Contact With Us/twitter_circle-512.webp">
                            Twitter</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="${pageContext.request.contextPath}/images/Contact With Us/34_google_plus-512.webp">
                            Google</a>
                        <a href="#"><img class="SocialNetWorkIcon" src="${pageContext.request.contextPath}/images/Contact With Us/768px-Instagram_icon.png">
                            Instagram</a>
                    </div>
                </div>
            </div>
            <div class="FooterColumn">
                <div class="FooterColumnContent">
                    <h3>PHƯƠNG THỨC THANH TOÁN</h3>
                    <div class="FooterPayment">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/ViettelPay.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/ACB.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/AirPay.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/MasterCard.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/Momo.svg">
                        <img class="PaymentIcon" src="${pageContext.request.contextPath}/Image/Paypal.svg">
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

    <script src="${pageContext.request.contextPath}/JS/KingdomWatch.js"></script>
    <script  src="${pageContext.request.contextPath}/JS/account.js"></script>
    <script  src="${pageContext.request.contextPath}/JS/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/JS/Run-snow.js"></script>
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