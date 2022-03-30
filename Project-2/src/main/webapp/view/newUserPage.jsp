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
</head>
<style>
input[type=text] {
	width: 40%;
	padding: 12px 15px;
	margin: 8px 0;
	box-sizing: border-box;
}

form {
	border: 3px solid;
	width: 60%;
}
</style>
<body>

	<div class="container-fluid">
		<h2>New User</h2>
		<form action="/AddUser">
			<div class="form-group">
				<label for="userId">User Id</label> <input type="text"
					class="form-control" id="userId" placeholder="User Id"
					name="userId">
			</div>

			<div class="form-group">
				<label for="firstName">First Name</label> <input type="text"
					class="form-control" id="firstName" placeholder="User Id"
					name="firstName">
			</div>


			<div class="form-group">
				<label for="secondName">Middle Name </label> <input type="text"
					class="form-control" id="secondName" placeholder="Middle Name"
					name="secondName">
			</div>


			<div class="form-group">
				<label for="lastName">Last Name</label> <input type="text"
					class="form-control" id="lastName" placeholder="Last Name"
					name="lastName">
			</div>


			<div class="form-group">
				<label for="lastName">Date Of Birth </label> <input type="date"
					class="form-control" id="lastName" name="dateOfBirth">
			</div>



			<div class="form-group">
				<label for="adharNo">Adhar No </label> <input type="text"
					class="form-control" id="adharNo" placeholder="Adhar Number"
					name="adharNo">
			</div>


			<div class="form-group">
				<label for="panNo">Pan No</label> <input type="text"
					class="form-control" id="adharNo" placeholder="Pan Number"
					name="panNo">
			</div>


			<div class="form-group">
				<label for="password">Password</label> <input type="password"
					class="form-control" id="password" placeholder="Pan Number"
					name="password">
			</div>


			<div class="form-group">
				<label for="address">Address</label> <input type="text"
					class="form-control" id="address" placeholder="Pan Number"
					name="address">
			</div>

			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>