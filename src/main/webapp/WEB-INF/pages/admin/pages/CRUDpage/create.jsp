<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>WatchKingDom Admin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/vendors/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/admin/js/select.dataTables.min.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admin/css/vertical-layout-light/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/admin/images/favicon.png" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
</head>

<body>
  <div class="container-scroller">
    <!-- partial:admin/partials/_navbar.html -->
    <%@ include file="./../partials/Header.jsp"%>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      
      <!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial -->
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="./../partials/Sidebar.jsp"%>
			<!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Thêm Đồng Hồ Mới</h4>  
                  <form:form class="forms-sample" modelAttribute="watch"  method="POST"
                        action="${pageContext.request.contextPath}/admin/watchs" enctype="multipart/form-data" >
                    <div class="form-group">
                      <label for="exampleInputName1">Tên sản phẩm</label>
                      <form:input type="text" class="form-control" path="name" required="required"/>
                    </div>
                    <div class="form-group">
                        <label for="chain">Đồng hồ thuộc hãng: </label>
                      	<form:select  class="form-control" path="maloai"  >
	                      <c:forEach var="loai" items="${loais}">
	                      	<form:option value="${loai.maloai}" label="- ${loai.tenloai} -" />
	                      </c:forEach>

                       </form:select>
                    </div>
                    <div class="form-group">
                        <label for="chain">Phụ kiện dành cho</label>
                      	<form:select  class="form-control" path="gender"  >
							<form:option value="1" label="- Nam -" />
		                       <form:option value="1" label="Nam" />
		                       <form:option value="0" label="Nữ" />
                       </form:select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPrice">Số lượng</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Sản phẩm</span>
                            </div>
                            <div class="input-group-prepend">
                                <span class="input-group-text">0</span>
                            </div>
                            <form:input type="number" min="0" class="form-control" id="exampleInputPrice"  path="soluong" aria-label="Amount (all watch)"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPrice">Giá sản phẩm</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">VND</span>
                            </div>
                            <div class="input-group-prepend">
                                <span class="input-group-text">0</span>
                            </div>
                            <form:input type="number" min="0" class="form-control" id="exampleInputPrice"  path="price" aria-label="Amount (to the nearest dollar)"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputRating">% sale</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">0 - 99</span>
                            </div>
                            <form:input type="number" min="0" max="99" path="sale" class="form-control" id="exampleInputRating" aria-label="Rating (from 1 to 5)"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="chain">Loại dây</label>
                      	<form:select  class="form-control" path="chain" id="exampleInputName1" >
	                      <form:option value="leather" label="- Dây da -" />
	                       <form:option value="leather" label="Dây da" />
	                       <form:option value="metal" label="Dây kim loại" />
                       </form:select>
                    </div>
                    
                    <div class="form-group">
                        <label>Kích thước</label>
                        <form:select class="js-example-basic-single form-control" path="size">
                         	<form:option value="42" label="- 42mm -" />
                          	<form:option value="35" label="- 35mm -" />
                           	<form:option value="40" label="- 40mm -" />
                        </form:select>
                    </div>
                
                    <div class="form-group">
                        <label for="exampleSelectColor">Màu</label>
                            <form:select class="form-control" id="exampleSelectColor" path="color">
                                <form:option value="Silver" label="- Silver -" />
	                          	<form:option value="Rosegold" label="- Rosegold -" />
	                          	<form:option value="Black" label="- Black -" />
	                           	<form:option value="White" label="- White -" />
	                           	<form:option value="Navy" label="- Navy -" />
	                           	<form:option value="Gray" label="- Gray -" />
	                           	<form:option value="Brown" label="- Brown -" />
	                           	<form:option value="Coffe" label="- Coffe -" />
	                           	<form:option value="Sand" label="- Sand -" />
                            </form:select>
                    </div>
                   	<div class="form-group">
                      <label for="exampleInputName1">Description</label>
                      <form:input type="text" class="form-control" path="description" required="required" />
                    </div>
                     <div class="form-group">
                      <label>Tải hình ảnh cho đồng hồ</label>
                      <form:input type="file" path="fileData2" class="file-upload-default" required="required"/>
                      <div class="input-group col-xs-12">
                        <input type="text" class="form-control file-upload-info" disabled required="required"/>
                        <span class="input-group-append">
                          <button class="file-upload-browse btn btn-info" type="button">Đăng tải</button>
                        </span>
                      </div>
                    </div> 
                    <button type="submit" class="btn btn-success mr-2">Thêm sản phẩm</button>
                    <button type="reset" class="btn btn-light">Hủy</button>
                  </form:form>
                </div>
              </div>
            </div>
            
            
          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:admin/partials/_footer.html --> 
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="${pageContext.request.contextPath}/admin/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="${pageContext.request.contextPath}/admin/vendors/typeahead.js/typeahead.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/admin/vendors/select2/select2.min.js"></script>
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="${pageContext.request.contextPath}/admin/js/off-canvas.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/hoverable-collapse.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/template.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/settings.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="${pageContext.request.contextPath}/admin/js/file-upload.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/typeahead.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/select2.js"></script>
  <!-- End custom js for this page-->
</body>
</html>