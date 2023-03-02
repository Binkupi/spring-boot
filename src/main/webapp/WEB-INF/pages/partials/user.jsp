<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:if test="${not empty admin }">
				<div class="NavElement" id="underline_none">
					<div class="dropdown mt-2 ml-2">
						<button class="btn btn-light dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-user-circle fa-2x"></i><span>Chào ${admin.getName() }</span>
						</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/admin/watchs"><i
								class="fas fa-user-shield"></i>  Trang quản lý </a>
							<a class="dropdown-item"
								href="${pageContext.request.contextPath}/admin/info-admin"><i class="fas fa-user-cog"></i> Thông tin admin</a> 
							<a class="dropdown-item"
								href="${pageContext.request.contextPath}/admin/change-password"><i class="fas fa-user-cog"></i> Đổi mật khẩu</a> 
								<form action="${pageContext.request.contextPath}/logout" id="logout-form" method="POST">
							    </form>
							    <a class="dropdown-item" id="logout-btn" href="/logout"> <i
									class="fas fa-sign-out-alt"></i> Đăng xuất
								</a>
							
						</div>
					</div>
				</div>
			</c:if>
			<c:if test="${ empty admin }">
				
			</c:if>
