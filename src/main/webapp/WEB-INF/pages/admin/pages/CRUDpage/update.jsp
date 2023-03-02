<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Thêm sản phẩm</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/admin/images/favicon.png" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">

</head>

<body>
  <div class="container-scroller">
    <!-- partial:admin/partials/_navbar.html -->
    <%@ include file="./../partials/Header.jsp"%>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      
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
                  <form:form class="forms-sample"  method="POST"
                        action="${pageContext.request.contextPath}/watchs" >
                    <div class="form-group">
                      <label for="exampleInputName1">Tên sản phẩm</label>
                      <form:input type="text" class="form-control" path="name" />
                    </div>
                    <div class="form-group">
                        <label for="chain">Đồng hồ thuộc hãng: </label>
                      	<form:select  class="form-control" path="maloai"  >
	                      
	                      <form:option value="1" label="- Citizen -" />
	                      <form:option value="1" label="Citizen" />
	                       <form:option value="2" label="Curnon" />
	                       <form:option value="3" label="casio" />
	                       <form:option value="4" label="rolex" />
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
                                <form:option value="silver" label="- Silver -" />
	                          	<form:option value="Xanh dương" label="- Xanh dương -" />
	                           	<form:option value="bạc" label="- bạc -" />
                            </form:select>
                    </div>
                   
                    <button type="submit" class="btn btn-success mr-2">Cập nhật sản phẩm</button>
                    <button class="btn btn-light">Hủy</button>
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