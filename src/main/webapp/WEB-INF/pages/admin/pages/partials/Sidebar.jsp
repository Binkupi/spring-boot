<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/">
							<i class="fas fa-clipboard-list"></i> <span class="menu-title">&nbsp
								Trang chủ</span>
					</a></li>
					<li class="nav-item">
						<a class="nav-link"data-toggle="collapse" href="#admin" aria-expanded="false"
							aria-controls="admin"> 
							<i class="fas fa-archive"></i> 
							<span class="menu-title">&nbspAdmin</span> <i class="menu-arrow"></i>
						</a>
						<div class="collapse" id="admin">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/info-admin">Thông tin admin </a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/change-password">Đổi mật khẩu </a></li>
								<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/admin/register">Thêm admin mới </a></li>
								<li class="nav-item"><a class="nav-link"
								href="${pageContext.request.contextPath}/logout">Đăng xuất </a></li>
							</ul>
						</div>
					</li>
					
					<li class="nav-item">
						<a class="nav-link"data-toggle="collapse" href="#category" aria-expanded="false"
							aria-controls="category"> 
							<i class="fas fa-archive"></i> 
							<span class="menu-title">&nbspQuản lý Danh mục</span> <i class="menu-arrow"></i>
						</a>
						
						<div class="collapse" id="category">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/category-manage">Danh mục sản phẩm</a></li>
								
							</ul>
						</div>
					</li>

					<li class="nav-item">
						<a class="nav-link"data-toggle="collapse" href="#product" aria-expanded="false"
							aria-controls="product"> 
							<i class="fas fa-archive"></i> 
							<span class="menu-title">&nbspQuản lý sản phẩm</span> <i class="menu-arrow"></i>
						</a>
						
						<div class="collapse" id="product">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/watchs">Danh sách sản phẩm </a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/watchs/create">Thêm sản phẩm </a></li>
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/loai/create">Thêm thương hiệu đồng hồ</a></li>
							</ul>
						</div>
					</li>

					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#bill" aria-expanded="false"
						aria-controls="bill"> <i class="fas fa-shipping-fast"></i> <span
							class="menu-title">&nbsp Quản lý đơn hàng</span> <i
							class="menu-arrow"></i>
					</a>
						<div class="collapse" id="bill">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="${pageContext.request.contextPath}/admin/bill">Danh sách đơn
										hàng</a></li>
							</ul>
						</div></li>

	
				</ul>
			</nav>