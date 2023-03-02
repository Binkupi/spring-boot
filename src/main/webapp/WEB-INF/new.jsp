<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <link href="css/Divide-Column.css" rel="stylesheet" type="text/css">
    <link href="css/CTSP.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/footer.css">
    <link rel="stylesheet" href="css/News.css">
    <link rel="stylesheet" href="css/CSSElement.css">
    <link rel="stylesheet" href="css/KingdomWatch.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/a3633fc35f.js" crossorigin="anonymous"></script>
    <title>Tin tức</title>    

</head>
<body >
       <!-- HEADER -->
    <header>
        <nav>
            <a id="Logo" href="Index.html"><img src="Image/Header/Logo.svg" alt="LogoWatchKingdom"></a>
            <a class="NavElement" id="MainNavElement"  href="News.html">
                <p>Tin tức</p>
            </a>
            <div class="NavElement">
                <p>Liên hệ</p>
                <div class="dropdown-content">
                  <a href="ContactInfo.html">Thông tin liên hệ</a>
                  <a href="Contact.html">Đơn liên hệ</a>
                </div>
            </div>
            <a class="NavElement" href="Index.html">
                <p>Mua hàng</p>
            </a>
            <div class="NavElement" id="Search"><img src="Image/Header/SearchRight.svg" alt="Search"></div>
        </nav>
        <div class="PseudoNav">
            <a id="Logo" href=""><img src="Image/Header/Logo.svg" alt="Logo"></a>
        </div>
        <div id="TransparentGlass"></div>
        <div id="SearchContent">
            <div>
                <img src="Image/Header/Xbutton.svg" alt="XButton">
            </div>
            <div>
                <img src="Image/Header/SearchLeft.svg" alt="Search">
                <input type="text" id="SearchInput" placeholder="Tìm kiếm ...">
            </div>
        </div>
    </header>

    <div class="container-fluid mt-5" style="padding-left: 100px; padding-right:100px;" >
        <div class="row">
            <div class="col-lg-8" style="position: relative;">
                <a href="./Blog/thay-pin-dong-ho-deo-tay-o-dau.html">
                    <div class="TrendNews">
                        <h3>Thay Pin Đồng Hồ Đeo Tay Ở Đâu Uy Tín Tại TPHCM</h3>
                        <span><i class="fas fa-comment-alt"></i> Bình Luận</span> <span class="Time">33 phút trước</span>
                    </div>    
                    <img src="images/News/thay-pin-dong-ho-watchkingdom.jpg" class="Img-Trending-New" alt="watchkingdom thay pin đồng hồ đeo tay uy tín tại thành phố Hồ Chí Minh">
                </a>                   
            </div>
            <div class="col-lg-4" style="position: relative;">
                <a href="./Blog/7-luu-y-quan-trong-khi-chon-mua-dong-ho.html">
                    <div  class="TrendNews" >
                        <h4>7 lưu ý quan trọng khi chọn mua đồng hồ</h4>
                        <span><i class="fas fa-comment-alt"></i> Bình Luận</span>  <span class="Time">33 phút trước</span>
                    </div>   
                    <img src="images/News/luu-y-khi-mua-dong-ho-watchkingdom.jpg" class="Img-Trending-New" alt="watchkingdom lưu những lưu ý khi mua đồng hồ">
                </a>    
                               
            </div>
        </div>
        <div class="row mt-5">
            <div class="col-lg-8">
                <div class="row mb-3">
                    <h1 style="font-weight:700;color:#000A5A"><i class="fas fa-newspaper "></i> Tin tức mới nhất</h1>
                </div>
                <div class="row mt-3">
                    <div class="col-lg-5 align-self-center">
                        <a href="./Blog/thay-pin-dong-ho-deo-tay-o-dau.html"><img src="images/News/thay-pin-dong-ho-watchkingdom.jpg" alt="watchkingdom thay pin đồng hồ đeo tay uy tín tại thành phố Hồ Chí Minh" class="Img-News"/></a>
                    </div>
                    <div class="col-lg-7">
                        <a href="./Blog/thay-pin-dong-ho-deo-tay-o-dau.html" class="PageNews"><h3>Thay Pin Đồng Hồ Đeo Tay Ở Đâu Uy Tín Tại TPHCM</h3></a>
                        <h6 >Đăng tải ngày 3/3/2021</h6>
                        <p>HẾT PIN, bạn không biết thay pin đồng hồ đeo tay
                            ở đâu. Đừng lo! Hãy đến với shop Đồng Hồ WatchKingdom, địa chỉ thay pin đồng hồ
                            đeo tay Uy Tín nhất tại TPHCM
                        </p>
                    </div>
                </div>
                <hr>
                <div class="row mt-3">
                    <div class="col-lg-5 align-self-center">
                        <a href="./Blog/kien-thuc-can-thiet-de-bao-quan-dong-ho-deo-tay-tot-nhat.html"><img src="images/News/kien-thuc-bao-quan-dong-ho-watchkingdom.jpg" alt="watckingdom kiến thức để bảo quản đồng hồ đeo tay tốt nhất" class="Img-News"/></a>
                    </div>
                    <div class="col-lg-7">
                        <a href="./Blog/kien-thuc-can-thiet-de-bao-quan-dong-ho-deo-tay-tot-nhat.html" class="PageNews"><h3>Kiến thức cần thiết để bảo quản đồng hồ đeo tay tốt nhất</h3></a>
                        <h6>Đăng tải ngày 3/3/2021</h6>
                        <p>Bảo quản đồng hồ là điều cần thiết, để giúp đồng hồ hoạt động hiệu quả và duy trì tuổi thọ của đồng hồ. WatchKingdom có một bài viết 
                            chia sẻ tường tận về điều này
                        </p>
                    </div>
                </div>
                <hr>
                <div class="row mt-3">
                    <div class="col-lg-5 align-self-center">
                        <a href="./Blog/top-dong-ho-nam-nu-ban-chay-nhat-gia-chua-den-5-trieu-dong.html"><img src="images/News/dong-ho-cap-nam-nu-watchkingdom.png" alt="watchkingdom đồng hồ nam nữ đeo tay giá dưới 5 triệu"  class="Img-News"/></a>
                    </div>
                    <div class="col-lg-7">
                        <a href="./Blog/top-dong-ho-nam-nu-ban-chay-nhat-gia-chua-den-5-trieu-dong.html" class="PageNews"><h3>Bộ sưu tập đồng hồ nam, nữ bán chạy nhất dưới 5 triệu đồng</h3></a>
                        <h6>Đăng tải ngày 3/3/2021</h6>
                        <p>Bạn đang tìm kiếm một chiếc đồng hồ đeo tay hội tụ
                            đủ yếu tố: Mẫu mã đẹp - Thương hiệu có tiếng - Chất lượng và đặc biệt là giá thành rẻ?
                        </p>
                    </div>
                </div>
                <hr>
                <div class="row mt-3">
                    <div class="col-lg-5 align-self-center">
                        <a href="./Blog/top-15-thuong-hieu-dong-ho.html"><img src="images/News/thuong-hieu-dong-ho-thoi-trang-watchkingdom.jpg" alt="15 thương hiệu đồng hồ thời trang nam nữ đáng mua" class="Img-News"/></a>
                    </div>
                    <div class="col-lg-7">
                        <a href="./Blog/top-15-thuong-hieu-dong-ho.html" class="PageNews"><h3>Danh sách 15 thương hiệu đồng hồ thời trang nam, nữ đáng mua</h3></a>
                        <h6>Đăng tải ngày 3/3/2021</h6>
                        <p>Chỉ tính riêng về mảng đồng hồ thời trang thì có khoảng 15 thương hiệu,
                             đi kèm là 15 kiểu thiết kế khác nhau cho bạn lựa chọn. 
                             Mỗi thương hiệu đều sở hữu ưu và nhược điểm riêng nên cần cân nhắc kỹ trước khi lựa chọn.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="row TitleTrending" ><h3>Nổi bật</h3></div>
                <div class="row mb-2">
                    <div class="col-4">
                        <a href="./Blog/7-luu-y-quan-trong-khi-chon-mua-dong-ho.html"><img src="images/News/luu-y-khi-mua-dong-ho-watchkingdom.jpg" alt="7 lưu ý quan trọng khi chọn mua đồng hồ watchkingdom"  class="Img-Trending"/></a>
                    </div>
                    <div class="col-8">
                        <a href="./Blog/7-luu-y-quan-trong-khi-chon-mua-dong-ho.html" class="PageNews"><h6>7 lưu ý quan trọng khi chọn mua đồng hồ</h6></a>
                        <span><i class="fas fa-comment-alt"></i> Bình Luận</span>  <span class="Time">33 phút trước</span>
                    </div>
                </div>
                <hr>
                <div class="row mb-2">
                    <div class="col-4">
                        <a href="./Blog/top-10-cua-hang-ban-dong-ho-chinh-hang-uy-tin-nhat-tphcm.html"><img src="images/News/top-10-cua-hang-ban-dong-ho-chinh-hang-watch-kingdom.png" alt="top 10 cửa hàng bán đồng hồ chính hãng tại thành phố Hồ Chí Minh" class="Img-Trending" /></a>
                    </div>
                    <div class="col-8">
                        <a href="./Blog/top-10-cua-hang-ban-dong-ho-chinh-hang-uy-tin-nhat-tphcm.html" class="PageNews"><h6>Top 10 cửa hàng bán đồng hồ chính hãng uy tín nhất TPHCM</h6></a>
                        <span><i class="fas fa-comment-alt"></i> Bình Luận</span>  <span class="Time">33 phút trước</span>
                    </div>
                </div>
                <hr>
                <div class="row mb-2">
                    <div class="col-4">
                        <a href="./Blog/phan-biet-dong-ho-automatic-theo-chuyen-gia.html"><img src="images/News/phan-biet-dong-ho-watchkingdom.png" alt="phân biệt đồng hồ automatic theo chuyên gia watchkingdom" class="Img-Trending" /></a>
                    </div>
                    <div class="col-8">
                        <a href="./Blog/phan-biet-dong-ho-automatic-theo-chuyen-gia.html" class="PageNews"><h6>Phân biệt đồng hồ automatic theo cách chuyên gia</h6></a>
                        <span><i class="fas fa-comment-alt"></i> Bình Luận</span>  <span class="Time">33 phút trước</span>
                    </div>
                </div>
                <hr>
                <div class="row mb-2">
                    <div class="col-4">
                        <a href="./Blog/huong-dan-cach-kiem-tra-dong-ho.html"><img src="images/News/huong-dan-kiem-tra-dong-ho-watchkingdom.jpg" alt="hướng dẫn kiểm tra đồng hồ chính hãng đơn giản watchkingdom" class="Img-Trending" /></a>
                    </div>
                    <div class="col-8">
                        <a href="./Blog/huong-dan-cach-kiem-tra-dong-ho.html" class="PageNews"><h6>Hướng dẫn cách kiểm tra đồng hồ chính hãng đơn giản và chính xác nhất</h6></a>
                        <span><i class="fas fa-comment-alt"></i> Bình Luận</span>  <span class="Time">33 phút trước</span>
                    </div>
                </div>
                <hr>
                <div class="row mb-2">
                    <div class="col-4">
                        <a href="./Blog/7-luu-y-quan-trong-khi-chon-mua-dong-ho.html"><img src="images/News/luu-y-khi-mua-dong-ho-watchkingdom.jpg" alt="7 lưu ý quan trọng khi chọn mua đồng hồ watchkingdom"  class="Img-Trending" /></a>
                    </div>
                    <div class="col-8">
                        <a href="./Blog/7-luu-y-quan-trong-khi-chon-mua-dong-ho.html" class="PageNews"><h6>7 lưu ý quan trọng khi chọn mua đồng hồ</h6></a>
                        <span><i class="fas fa-comment-alt"></i> Bình Luận</span>  <span class="Time">33 phút trước</span>
                    </div>
                </div>
                <hr>
               
            </div>
        </div>

            <ul class="pagination  justify-content-center pagination-cirle" >
                <li class="page-item m-2"><a class="page-link"href="javascript:void(0)" >«</a></li>
                <li class="page-item m-2 active"><a class="page-link" href="javascript:void(0)">1</a></li>
                <li class="page-item m-2"><a class="page-link" href="javascript:void(0)">2</a></li>
                <li class="page-item m-2"><a class="page-link" href="javascript:void(0)">3</a></li>
                <li class="page-item m-2"><a class="page-link" href="javascript:void(0)">4</a></li>
                <li class="page-item m-2"><a class="page-link" href="javascript:void(0)">5</a></li>
                <li class="page-item m-2"><a class="page-link" href="javascript:void(0)">6</a></li>
                <li class="page-item m-2"><a class="page-link" href="javascript:void(0)">»</a></li>
            </ul>
            <div class="news__black_link">
                <p class="news__black_link-title">Xem thêm:</p>
                <p class="news__black_link-text"><em> Ghé thăm cửa hàng WatchKingDom giá rẻ, chất lượng <a href="../Index.html" rel="dofollow"><b>Tại đây</b></a></em></p>       
            </div>
    </div>
    <!-- ĐĂNG KÍ NHẬN TIN MỚI -->
    <section id="Information">
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
                        <a href="mailto:example@email.com"> <img class="Icon" src="Image/Mail.svg">
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
            <p class="footer__last-line" style="padding-bottom: 15px;margin-bottom:0"><span class="copyright">Copyright</span>
                "&nbsp;©&nbsp; 2010-2021 Watch Kingdom Q.P.S."
                <span class="rights-reserved">All rights reserved.</span>
            </p>
        </div>
    </div>
<script src="JS/jquery-3.5.1.min.js"></script>
<script src="JS/KingdomWatch.js"></script>
<script src="JS/JS-CTSP.js"></script>
<script src="JS/JSElement.js"></script>
<script src="JS/elevatezoom-master/jquery.elevatezoom.js"></script>
<script src="JS/Run-snow.js"></script>
<script src="JS/News.js"></script>
</body>
</html>