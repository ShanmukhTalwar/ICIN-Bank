<%@page import="com.example.demo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="view/css/userLogin.css">
</head>
<body>
	<%
	Customer customer = (Customer) request.getAttribute("customer");
	Customer dummycustomer = (Customer) request.getAttribute("dummycustomer");
	%>

	
	<div class="limit">
		<div class="login-container">
			<div class="bb-login">
				<form action="userLogin1" class="bb-form validate-form">
					<span class="bb-form-title p-b-26"> Send Money Form </span> <span
						class="bb-form-title p-b-48"> <i class="mdi mdi-symfony"></i>
					</span>
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="transactionId"> <span
							class="bbb-input" data-placeholder="Transaction Id"></span>
					</div>
					<div class="wrap-input100 validate-input">
						<span class="btn-show-pass"> <i
							class="mdi mdi-eye show_password"></i>
						</span> <input class="input100" type="text" name="amount">
						<span class="bbb-input" data-placeholder="Amount"></span>
					</div>
					
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="date"> <span
							class="bbb-input"></span>
					</div>
					
					<div class="login-container-form-btn">
						<div class="bb-login-form-btn">
							<div class="bb-form-bgbtn"></div>
							<button class="bb-form-btn">Send Amount</button>
						</div>

					</div>
					
				</form>
			</div>
		</div>
	</div>
	
	
	

</body>
</html>