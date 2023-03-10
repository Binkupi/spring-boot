
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
					<div class="row">

						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">C???p Nh???t ????n h??ng</h4>
									<div class="table-responsive">
									<c:forEach var="bill" items="${bills}">
										<form:form class="forms-sample" method="POST"
											action="${pageContext.request.contextPath}/admin/bill/update/${bill.id}" modelAttribute="bill">
											
												<div class="form-group">
													<label for="exampleInputName1">M?? h??a ????n: ${bill.id}</label>													
												</div>
												
												<div class="form-group">
													<label for="exampleInputName1">Ng??y h??a ????n</label>
													<form:input type="date" autocomplete="off"
														class="form-control" path="date" value="${bill.date}" />
												</div>
																								
												<div class="form-group">
													<label for="exampleInputName1">M?? t??? h??a ????n</label>
													<form:select  path="description" class="custom-select" >
														<c:if test='${bill.description=="Da xac nhan"}'>
															<form:option value="Dang xu ly" >??ang x??? l??</form:option>
											                <form:option value="Da xac nhan"  selected="selected">???? x??c nh???n</form:option>
											                <form:option value="Dang giao hang" >??ang giao h??ng</form:option>
											                <form:option value="Da giao hang thanh cong">???? giao h??ng th??nh c??ng</form:option>
											                <form:option value="Da huy" >???? h???y</form:option>
														</c:if>
														<c:if test='${ bill.description=="Dang xu ly"}'>
															<form:option value="Dang xu ly" selected="selected">??ang x??? l??</form:option>
											                <form:option value="Da xac nhan"  >???? x??c nh???n</form:option>
											                <form:option value="Dang giao hang" >??ang giao h??ng</form:option>
											                <form:option value="Da giao hang thanh cong">???? giao h??ng th??nh c??ng</form:option>
											                <form:option value="Da huy" >???? h???y</form:option>
														</c:if>
														<c:if test='${ bill.description=="Dang giao hang"}'>
															<form:option value="Dang xu ly" >??ang x??? l??</form:option>
											                <form:option value="Da xac nhan"  >???? x??c nh???n</form:option>
											                <form:option value="Dang giao hang" selected="selected">??ang giao h??ng</form:option>
											                <form:option value="Da giao hang thanh cong">???? giao h??ng th??nh c??ng</form:option>
											                <form:option value="Da huy" >???? h???y</form:option>
														</c:if>
														<c:if test='${ bill.description=="Da giao hang thanh cong"}'>
															<form:option value="Dang xu ly" >??ang x??? l??</form:option>
											                <form:option value="Da xac nhan"  >???? x??c nh???n</form:option>
											                <form:option value="Dang giao hang" >??ang giao h??ng</form:option>
											                <form:option value="Da giao hang thanh cong" selected="selected">???? giao h??ng th??nh c??ng</form:option>
											                <form:option value="Da huy" >???? h???y</form:option>
														</c:if>
														<c:if test='${ bill.description=="Da huy"}'>
															<form:option value="Dang xu ly" >??ang x??? l??</form:option>
											                <form:option value="Da xac nhan"  >???? x??c nh???n</form:option>
											                <form:option value="Dang giao hang" >??ang giao h??ng</form:option>
											                <form:option value="Da giao hang thanh cong">???? giao h??ng th??nh c??ng</form:option>
											                <form:option value="Da huy" selected="selected">???? h???y</form:option>
														</c:if>
										                
										            </form:select>
												</div>																																	
											<button type="submit" class="btn btn-success mr-2">C???p
												nh???t s???n ph???m</button>
											<button class="btn btn-light">H???y</button>
										</form:form>
										</c:forEach>
									</div>
								</div>
							</div>
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