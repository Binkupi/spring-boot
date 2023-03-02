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
<title>Skydash Admin</title>
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
		<!-- partial:partials/_navbar.html -->
		 <%@ include file="./../partials/Header.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial -->
			<!-- partial:partials/_sidebar.html -->
			<%@ include file="./../partials/Sidebar.jsp"%>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<h4 class="text-center mb-4">Thay đổi mật khẩu <span><i class="fas fa-exchange-alt"></i></span></h4>
				    <form:form action="${pageContext.request.contextPath}/admin/change-password" modelAttribute="password"  method="POST">
				        <div class="row mx-0">   
				            <div class="col-3 py-0 text-right px-0">
				                
				            </div> 
				            <div class="col-6 px-0">
				                <div class="row form-group mx-0">
				                    <div class="col-4 d-flex align-items-center">
				                    <label class="mb-0">Mật khẩu cũ*:</label>
				                    </div>
				                    <div class="col-8 d-flex align-items-center px-0">
				                    <form:input type="text" class="form-control" required="required"  path="oldPassword"  />
				                    
				                    </div>
				                </div>
				            </div>
				            <div class="col-3 py-0 text-left px-0">
				                
				                
				            </div> 
				        </div>
				        <div class="row mx-0">   
				            <div class="col-3 py-0 text-right px-0">
				                
				            </div> 
				            <div class="col-6 px-0">
				                <div class="row form-group mx-0">
				                    <div class="col-4 d-flex align-items-center">
				                    <label class="mb-0">Mật khẩu mới*:</label>
				                    </div>
				                    <div class="col-8 d-flex align-items-center px-0">
				                    <form:input type="password"  class="form-control" required="required" path="newPassword"  />
				                    
				                    </div>
				                </div>
				            </div>
				            <div class="col-3 py-0 text-left px-0">
				               
				            </div> 
				        </div>
				        <div class="row mx-0">   
				            <div class="col-3 py-0 text-right px-0">
				                
				            </div> 
				            <div class="col-6 px-0">
				                <div class="row form-group mx-0">
				                    <div class="col-4 d-flex align-items-center">
				                    <label class="mb-0">Xác nhận mật khẩu*:</label>
				                    </div>
				                    <div class="col-8 d-flex align-items-center px-0">
				                    <form:input type="password" class="form-control" required="required" path="confirmPassword"  />
				                    
				                    </div>
				                </div>
				            </div>
				            <div class="col-3 py-0 text-left px-0">
				            </div> 
				        </div>
				        <div class="row mx-0">
				            <div class="col-4 py-0 text-right px-0">
				                
				            </div>       
				            <div class="col-4 py-0 text-center px-0">
				                <button type="submit" class="btn btn-success">Đổi mật khẩu</button>
				            </div>
				            <div class="col-4 py-0 text-right px-0">
				                
				            </div>    
				        </div>     
				    </form:form>
				
						
					<div class="row mx-0">
				            <div class="col-4 py-0 text-right px-0">
				                
				            </div>       
				            <div class="col-4 py-0 text-center px-0">
				                <c:if test="${error==2}">
									<label class="text-danger">Mật khẩu không chính xác.Vui lòng kiểm tra lại!!!</label>
								</c:if>
								<c:if test="${error==1}">
									<label class="text-danger">Xác nhận mật khẩu không chính xác.Vui lòng kiểm tra lại!!!</label>
								</c:if>
								<c:if test="${error==3}">
									<label class="text-danger">Mật khẩu phải lớn hơn hoặc bằng 8 kí tự!!!</label>
								</c:if>
				            </div>
				            <div class="col-4 py-0 text-right px-0">
				                
				            </div>    
				        </div>     
					
						
				</div>	
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- plugins:js -->
	<script
		src="${pageContext.request.contextPath}/admin/vendors/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script
		src="${pageContext.request.contextPath}/admin/vendors/chart.js/Chart.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/vendors/datatables.net/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/js/dataTables.select.min.js"></script>

	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script src="${pageContext.request.contextPath}/admin/js/off-canvas.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/js/hoverable-collapse.js"></script>
	<script src="${pageContext.request.contextPath}/admin/js/template.js"></script>
	<script src="${pageContext.request.contextPath}/admin/js/settings.js"></script>
	<script src="${pageContext.request.contextPath}/admin/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="${pageContext.request.contextPath}/admin/js/dashboard.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/js/Chart.roundedBarCharts.js"></script>
	<!-- End custom js for this page-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
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