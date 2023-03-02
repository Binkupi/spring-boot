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
		            
		            <div class="col-lg-12 grid-margin stretch-card">
		              <div class="card">
		                <div class="card-body">
		                  <h4 class="card-title">Quản lý danh mục</h4>
		                  <p class="card-description">
		                    	Sản phẩm theo giới tính
		                  </p>
		                  <div class="table-responsive">
		                    <table class="table table-striped">
		                      <thead>
		                        <tr> 
		                          <th> Giới tính  </th>		                          
		                          <th> Số lượng</th>
		                        </tr>
		                      </thead>
		                      <tbody>
		                        <tr> 
		                          <td> Nam  </td>                         
		                          <td>     ${ male} </td>
		                        </tr>
		                        <tr> 
		                          <td> Nữ  </td>                         
		                          <td>     ${ female} </td>
		                        </tr>
		                      </tbody>
		                    </table>
		                  </div>
		                </div>
		              </div>
		              
		            </div>
		            
		          </div>
		          <div class="row">
		            
		            <div class="col-lg-12 grid-margin stretch-card">
		              <div class="card">
		                <div class="card-body">
		                  <h4 class="card-title">Quản lý danh mục</h4>
		                  <p class="card-description">
		                    	Sản phẩm theo thương hiệu
		                  </p>
		                  <div class="table-responsive">
		                    <table class="table table-striped">
		                      <thead>
		                        <tr> 
		                          <th> Thương hiệu  </th>		                          
		                          <th> Số lượng</th>
		                          <th> Hành động</th>
		                        </tr>
		                      </thead>
		                      <tbody>
		                        <c:forEach var="loai" items="${loais}">
									<tr> 
			                          <td> ${loai.tenloai } </td>                         
			                          <td>    ${loai.soluong } </td>
			                          <td><form:form modelAttribute="loai"  method="POST" class="form-delete-category" action="${pageContext.request.contextPath}/admin/loai/delete" style="display:none">
												<form:input value="${loai.maloai}" path="maloai" />
											</form:form>
											<p style="display:none" class="name-category">${loai.tenloai }</p>
											<button type="button" class="btn btn-danger btn-delele-category" ><span><i class="fas fa-trash-alt"></i></span> Xóa</button>
										</td>
			                        </tr>
								</c:forEach>
		                      </tbody>
		                    </table>
		                  </div>
		                </div>
		              </div>
		              
		            </div>
		            
		          </div>
		         
		        </div>
		        <!-- content-wrapper ends -->
		        <!-- partial:../../partials/_footer.html --> 
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
  <script src="${pageContext.request.contextPath}/admin/js/adminList.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="${pageContext.request.contextPath}/admin/js/file-upload.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/typeahead.js"></script>
  <script src="${pageContext.request.contextPath}/admin/js/select2.js"></script>
  <!-- End custom js for this page-->
</body>
</html>