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
									<h4 class="card-title">Cập Nhật Sản Phẩm</h4>
									<div class="table-responsive">
									<c:forEach var="watch" items="${productDetails}">
										<form:form class="forms-sample" method="POST"
											action="${pageContext.request.contextPath}/admin/watchs/${watch.id}/update" modelAttribute="productDetail">
											
												<div class="form-group">
													<label for="exampleInputName1">Tên sản phẩm</label>
													<form:input type="text" autocomplete="off"
														class="form-control" path="name" value="${watch.name}" />
												</div>
												<div class="form-group">
													<label for="chain">Đồng hồ thuộc hãng: </label>
													<c:choose>
														<c:when test="${ watch.maloai == 1 }">
															<form:select class="form-control" path="maloai">
																<option value="1" selected="selected">-Citizen-</option>
																<option value="2">-Curnon-</option>
																<option value="3">-casio-</option>
																<option value="4">-rolex-</option>
															</form:select>
														</c:when>
														<c:when test="${ watch.maloai == 2 }">
															<form:select class="form-control" path="maloai">
																<option value="1">-Citizen-</option>
																<option value="2" selected="selected">-Curnon-</option>
																<option value="3">-casio-</option>
																<option value="4">-rolex-</option>
															</form:select>
														</c:when>
														<c:when test="${ watch.maloai == 3 }">
															<form:select class="form-control" path="maloai">
																<option value="1">-Citizen-</option>
																<option value="2">-Curnon-</option>
																<option value="3" selected="selected">-casio-</option>
																<option value="4">-rolex-</option>
															</form:select>
														</c:when>
														<c:when test="${ watch.maloai == 4 }">
															<form:select class="form-control" path="maloai">
																<option value="1">-Citizen-</option>
																<option value="2">-Curnon-</option>
																<option value="3">-casio-</option>
																<option value="4" selected="selected">-rolex-</option>
															</form:select>
														</c:when>
														<c:otherwise>
															<b>Khác</b>
														</c:otherwise>
													</c:choose>
												</div>
												<div class="form-group">
													<label for="chain">Phụ kiện dành cho</label>
													<c:choose>
														<c:when test="${ watch.gender == 1 }">
															<form:select class="form-control" path="maloai">
																<option value="1" selected="selected">-Nam-</option>
																<option value="2">-Nữ-</option>
															</form:select>
														</c:when>
														<c:when test="${ watch.gender == 0 }">
															<form:select class="form-control" path="maloai">
																<option value="1">-Nam-</option>
																<option value="2" selected="selected">-Nữ-</option>													
															</form:select>
														</c:when>														
														<c:otherwise>
															<b>Khác</b>
														</c:otherwise>
													</c:choose>
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
														<form:input type="number" autocomplete="off" min="0"
															class="form-control" id="exampleInputPrice"
															path="soluong" aria-label="Amount (all watch)"
															value="${watch.soluong }" />
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
														<form:input type="number" min="0" autocomplete="off"
															class="form-control" id="exampleInputPrice" path="price"
															aria-label="Amount (to the nearest dollar)"
															value="${watch.price}" />
													</div>
												</div>
												<div class="form-group">
													<label for="exampleInputRating">% sale</label>
													<div class="input-group">
														<div class="input-group-prepend">
															<span class="input-group-text">0 - 99</span>
														</div>
														<form:input type="number" autocomplete="off" min="0"
															max="99" path="sale" class="form-control"
															id="exampleInputRating" aria-label="Rating (from 1 to 5)"
															value="${watch.sale }" />
													</div>
												</div>
												<div class="form-group">
													<label for="chain">Loại dây</label>
													<c:choose>
														<c:when test="${ watch.chain == 'metal' }">
															<form:select class="form-control" path="chain">
																<option value="metal" selected="selected">-Metal-</option>
																<option value="leather">-Leather-</option>																
															</form:select>
														</c:when>
														<c:when test="${ watch.chain == 'leather' }">
															<form:select class="form-control" path="chain">
																<option value="metal">-Metal-</option>
																<option value="leather" selected="selected">-Leather-</option>
															</form:select>
														</c:when>														
														<c:otherwise>
															<b>Khác</b>
														</c:otherwise>
													</c:choose>
												</div>

												<div class="form-group">
													<label>Kích thước</label>													
													<c:choose>
														<c:when test="${ watch.size == 42 }">
															<form:select class="form-control" path="size">
																<option value="42" selected="selected">- 42mm -</option>
																<option value="35">- 35mm -</option>
															</form:select>
														</c:when>
														<c:when test="${ watch.size == 35 }">
															<form:select class="form-control" path="size">
																<option value="42" >- 42mm -</option>
																<option value="35" selected="selected">- 35mm -</option>
															</form:select>
														</c:when>													
														<c:otherwise>
															<b>Khác</b>
														</c:otherwise>
													</c:choose>
												</div>

												<div class="form-group">
													<label for="exampleSelectColor">Màu</label>													
														<c:if test="${ watch.color == 'Brown' }">
															<form:select class="form-control" path="color">
																<form:option value="Silver"  >- Silver -</form:option>
									                          	<form:option value="Rosegold" >- Rosegold -</form:option>
									                          	<form:option value="Black"  >- Black -</form:option>
									                           	<form:option value="White"  >- White -</form:option>
									                           	<form:option value="Navy" >- Navy -</form:option>
									                           	<form:option value="Gray"  >- Gray -</form:option>
									                           	<form:option value="Brown"  selected="selected">- Brown -</form:option>
									                           	<form:option value="Coffe"  >- Coffe -</form:option>
									                           	<form:option value="Sand" >- Sand -</form:option>
															</form:select>
														</c:if>
														<c:if test="${ watch.color == 'Rosegold' }">
															<form:select class="form-control" path="color">
																<form:option value="Silver" >- Silver -</form:option>
									                          	<form:option value="Rosegold"  selected="selected">- Rosegold -</form:option>
									                          	<form:option value="Black">- Black -</form:option>
									                           	<form:option value="White"  >- White -</form:option>
									                           	<form:option value="Navy" >- Navy -</form:option>
									                           	<form:option value="Gray"  >- Gray -</form:option>
									                           	<form:option value="Brown" >- Brown -</form:option>
									                           	<form:option value="Coffe" >- Coffe -</form:option>
									                           	<form:option value="Sand"  >- Sand -</form:option>
															</form:select>
														</c:if>
														<c:if test="${ watch.color == 'Black' }">
															<form:select class="form-control" path="color">
																<form:option value="Silver"  >- Silver -</form:option>
									                          	<form:option value="Rosegold"  >- Rosegold -</form:option>
									                          	<form:option value="Black" selected="selected">- Black -</form:option>
									                           	<form:option value="White" >- White -</form:option>
									                           	<form:option value="Navy" >- Navy -</form:option>
									                           	<form:option value="Gray"  >- Gray -</form:option>
									                           	<form:option value="Brown"  >- Brown -</form:option>
									                           	<form:option value="Coffe" >- Coffe -</form:option>
									                           	<form:option value="Sand"  >- Sand -</form:option>
															</form:select>
														</c:if>
														<c:if test="${ watch.color == 'White' }">
															<form:select class="form-control" path="color">
																<form:option value="Silver"  >- Silver -</form:option>
									                          	<form:option value="Rosegold"  >- Rosegold -</form:option>
									                          	<form:option value="Black" selected="selected">- Black -</form:option>
									                           	<form:option value="White" >- White -</form:option>
									                           	<form:option value="Navy" >- Navy -</form:option>
									                           	<form:option value="Gray"  >- Gray -</form:option>
									                           	<form:option value="Brown"  >- Brown -</form:option>
									                           	<form:option value="Coffe" >- Coffe -</form:option>
									                           	<form:option value="Sand"  >- Sand -</form:option>
															</form:select>
														</c:if>		
														<c:if test="${ watch.color == 'Navy' }">
															<form:select class="form-control" path="color">
																<form:option value="Silver"  >- Silver -</form:option>
									                          	<form:option value="Rosegold"  >- Rosegold -</form:option>
									                          	<form:option value="Black" selected="selected">- Black -</form:option>
									                           	<form:option value="White" >- White -</form:option>
									                           	<form:option value="Navy" >- Navy -</form:option>
									                           	<form:option value="Gray"  >- Gray -</form:option>
									                           	<form:option value="Brown"  >- Brown -</form:option>
									                           	<form:option value="Coffe" >- Coffe -</form:option>
									                           	<form:option value="Sand"  >- Sand -</form:option>
															</form:select>
														</c:if>
														<c:if test="${ watch.color == 'Coffe' }">
															<form:select class="form-control" path="color">
																<form:option value="Silver"  >- Silver -</form:option>
									                          	<form:option value="Rosegold"  >- Rosegold -</form:option>
									                          	<form:option value="Black" selected="selected">- Black -</form:option>
									                           	<form:option value="White" >- White -</form:option>
									                           	<form:option value="Navy" >- Navy -</form:option>
									                           	<form:option value="Gray"  >- Gray -</form:option>
									                           	<form:option value="Brown"  >- Brown -</form:option>
									                           	<form:option value="Coffe" >- Coffe -</form:option>
									                           	<form:option value="Sand"  >- Sand -</form:option>
															</form:select>
														</c:if>			
														<c:if test="${ watch.color == 'Sand' }">
															<form:select class="form-control" path="color">
																<form:option value="Silver"  >- Silver -</form:option>
									                          	<form:option value="Rosegold"  >- Rosegold -</form:option>
									                          	<form:option value="Black" selected="selected">- Black -</form:option>
									                           	<form:option value="White" >- White -</form:option>
									                           	<form:option value="Navy" >- Navy -</form:option>
									                           	<form:option value="Gray"  >- Gray -</form:option>
									                           	<form:option value="Brown"  >- Brown -</form:option>
									                           	<form:option value="Coffe" >- Coffe -</form:option>
									                           	<form:option value="Sand"  >- Sand -</form:option>
															</form:select>
														</c:if>																

												</div>
											
											<button type="submit" class="btn btn-success mr-2">Cập
												nhật sản phẩm</button>
											<button class="btn btn-light">Hủy</button>
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
