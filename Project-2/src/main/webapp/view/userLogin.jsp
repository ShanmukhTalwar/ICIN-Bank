<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="view/css/userLogin.css">
</head>
<body>
</head>
<body>

	<div class="limit">
		<div class="login-container">
			<div class="bb-login">
				<form action="userLogin1" class="bb-form validate-form">
					<span class="bb-form-title p-b-26"> Welcome </span> <span
						class="bb-form-title p-b-48"> <i class="mdi mdi-symfony"></i>
					</span>
					<div class="wrap-input100 validate-input"
						data-validate="Valid email is: a@b.c">
						<input class="input100" type="text" name="userId"> <span
							class="bbb-input" data-placeholder="User Id"></span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="Enter password">
						<span class="btn-show-pass"> <i
							class="mdi mdi-eye show_password"></i>
						</span> <input class="input100" type="password" name="password">
						<span class="bbb-input" data-placeholder="Password"></span>
					</div>
					<div class="login-container-form-btn">
						<div class="bb-login-form-btn">
							<div class="bb-form-bgbtn"></div>
							<button class="bb-form-btn">Login</button>
						</div>

					</div>
					<div class="text-center p-t-115">
						<span class="txt1"> Don’t have an account? </span> <a class="txt2"
							href="newUser"> Sign Up </a>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>


</html>