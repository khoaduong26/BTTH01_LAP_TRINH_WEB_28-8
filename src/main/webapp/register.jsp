<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<title>Tạo tài khoản mới</title>
<!-- Bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	rel="stylesheet">

<style>
body {
	background: #f5f6f8;
}

.register-box {
	max-width: 420px;
	margin: 60px auto;
	padding: 25px;
	background: #fff;
	border-radius: 8px;
	box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.15);
}

.register-box h2 {
	text-align: center;
	margin-bottom: 25px;
	color: #333;
}

.input-group-text {
	background: #fff;
	border-right: 0;
}

.form-control {
	border-left: 0;
}

.btn-custom {
	background-color: #008cdd;
	color: white;
	font-weight: 500;
}

.btn-custom:hover {
	background-color: #007bbf;
}

.login-link {
	text-align: center;
	margin-top: 15px;
	font-size: 14px;
}
</style>
</head>
<body>

	<div class="register-box">
		<h2>Tạo tài khoản mới</h2>

		<!-- Hiển thị thông báo nếu có -->
		<c:if test="${alert != null}">
			<div class="alert alert-danger text-center">${alert}</div>
		</c:if>

		<form action="register" method="post">
			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-user"></i></span> <input
					type="text" class="form-control" name="username"
					placeholder="Tên đăng nhập" required>
			</div>

			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-id-card"></i></span>
				<input type="text" class="form-control" name="fullname"
					placeholder="Họ tên">
			</div>

			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-envelope"></i></span>
				<input type="email" class="form-control" name="email"
					placeholder="Nhập Email">
			</div>

			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-phone"></i></span> <input
					type="text" class="form-control" name="phone"
					placeholder="Số điện thoại">
			</div>

			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-lock"></i></span> <input
					type="password" class="form-control" name="password"
					placeholder="Mật khẩu" required>
			</div>

			<div class="mb-3 input-group">
				<span class="input-group-text"><i class="fa fa-lock"></i></span> <input
					type="password" class="form-control" name="repassword"
					placeholder="Nhập lại mật khẩu" required>
			</div>

			<div class="d-grid">
				<button type="submit" class="btn btn-custom btn-lg">Tạo tài
					khoản</button>
			</div>
		</form>

		<div class="login-link">
			Nếu bạn đã có tài khoản? <a href="login.jsp">Đăng nhập</a>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
