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
		<!-- partial:partials/_navbar.html -->
		<%@ include file="./../partials/Header.jsp"%>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial -->
			<%@ include file="./../partials/Sidebar.jsp"%>
			<!-- partial:partials/_sidebar.html -->
			
			<!-- partial -->
			<div class="main-panel">
				
				<div class="content-wrapper">
					<div  class="preview">
						<label>Preview:</label></br>
							<a class="btn btn-primary mb-4" href="${pageContext.request.contextPath}/admin/preview/donghonam"><span><i class="fas fa-eye"></i></span>  Trang ?????ng h??? nam</a>
							<a class="btn btn-primary mb-4" href="${pageContext.request.contextPath}/admin/preview/donghonu"><span><i class="fas fa-eye"></i></span>  Trang ?????ng h??? N???</a>
					</div>
					<div class="row">
						
						<div class="col-lg-12 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Qu???n S???n Ph???m</h4>
									<div class="table-responsive">
										<table class="table table-striped">
											<thead>
												<tr>
													
													<th>S??? th??? t???</th>
													<th>T??n</th>
													<th>Gi??</th>
													<th>Size</th>
													<th>M??u s???c</th>
													<th>Danh m???c</th>
													
													<th>Tr???ng th??i</th>
													<th>Ch???nh s???a</th>
													
												</tr>
											</thead>
											<tbody>
												<c:forEach var="watch" items="${productWatchs}">
													<tr>
														
														<td>${ watch.id }</td>
														<td>${ watch.name }</td>
														<td>${ watch.price } VN??</td>
														<td>${ watch.size }</td>
														<td>${ watch.color }</td>
														<td><c:choose>
																<%-- Khi tham s??? color == 'red' --%>
																<c:when test="${ watch.gender == 1 }">
																	<p style="color: red;">NAM</p>
																</c:when>

																<%-- Khi tham s??? color == 'blue' --%>
																<c:when test="${ watch.gender == 0 }">
																	<p style="color: blue;">N???</p>
																</c:when>

																<%-- C??c tr?????ng h???p kh??c --%>
																<c:otherwise>
																	<b>Kh??c</b>
																</c:otherwise>
															</c:choose></td>
														
														<td><form:form class="forms-sample" modelAttribute="watch"  method="POST"
                        										action="${pageContext.request.contextPath}/admin/watchs/preview/${watch.id}" >
							
																<%-- Khi tham s??? color == 'red' --%>
																<c:if test="${ watch.checked == 1 }">
																	<form:select  id="exampleSelectColor" class="custom-select" path="checked" style="width:220px">
										                                <form:option value="1" label="- Hi???n th??? ??? trang ch??nh -" selected="selected"/>
											                          	<form:option value="2" label="- Hi???n th??? ??? trang review -" />
											                           	<form:option value="3" label="- Kh??ng hi???n th??? -" />
											                           	
									                            	</form:select></br>
									                            	
																</c:if>
																<c:if test="${ watch.checked == 2}">
																	<form:select  id="exampleSelectColor" class="custom-select" path="checked" style="width:220px">
										                                <form:option value="1" label="- Hi???n th??? ??? trang ch??nh -" />
											                          	<form:option value="2" label="- Hi???n th??? ??? trang review -" selected="selected"/>
											                           	<form:option value="3" label="- Kh??ng hi???n th??? -" />
											                           	
									                            	</form:select></br>
									                            	
																</c:if>
																<%-- C??c tr?????ng h???p kh??c --%>
																<c:if  test="${ watch.checked == 3 }">
																	<form:select  id="exampleSelectColor" class="custom-select" path="checked" style="width:220px">
										                                <form:option value="1" label="- Hi???n th??? ??? trang ch??nh -" />
											                          	<form:option value="2" label="- Hi???n th??? ??? trang review -" />
											                           	<form:option value="3" label="- Kh??ng hi???n th??? -" selected="selected"/>
											                           	
									                            	</form:select></br>
									                            	
																</c:if>
																<button type="submit" class="btn btn-sm btn-info">X??c nh???n</button>
								                            </form:form>
														 </td>
														<td><a href="${pageContext.request.contextPath}/admin/list-product/${watch.id}" type="button" class="btn btn-info"><span><i class="far fa-edit"></i></span> S???a</a>
															<form:form modelAttribute="watch"  method="POST" class="form-delete-product" action="${pageContext.request.contextPath}/admin/watchs/delete" style="display:none">
																<form:input value="${watch.id}" path="id" />
															</form:form>
															<p style="display:none" class="name-product">${watch.name }</p>
															<button type="button" class="btn btn-danger btn-delele-product" ><span><i class="fas fa-trash-alt"></i></span> X??a</button>
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
	<script src="${pageContext.request.contextPath}/admin/js/adminList.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="${pageContext.request.contextPath}/admin/js/dashboard.js"></script>
	<script
		src="${pageContext.request.contextPath}/admin/js/Chart.roundedBarCharts.js"></script>
	<!-- End custom js for this page-->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
</body>

</html>
