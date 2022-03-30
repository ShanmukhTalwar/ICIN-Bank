<%@page import="org.springframework.ui.Model"%>
<%@page import="com.example.demo.Customer"%>
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
<link rel="stylesheet" href="view/css/loginSuccess.css">
</head>
<body>
	<%
	Customer customer;
	customer = (Customer) request.getAttribute("customer");
	%>
	
	<div class="main">
		<div class="row">
			<div class="col-lg-7">
				<center>
					<div class="title">
						<b><%=customer.getFirstName()%> </b>
					</div>
				</center>
				<div class="details">
					<table class="table bio">
						<tr>
							<td><b>User Id</b></td>
							<td><b> <%=customer.getUserId()%>
							</b></td>
						</tr>
						<tr>
							<td><b>Account Type</b></td>
							<td><b>Saving Account &nbsp;</b></td>
						</tr>
						<tr>
							<td><b>Second Name</b></td>
							<td><b> <%=customer.getSecondName()%>
							</b></td>
						</tr>
						<tr>
							<td><b>Date Of Birth</b></td>
							<td><b> <%=customer.getDateOfBirth()%>
							</b></td>
						</tr>
						<tr>
							<td><b>Adhar Number</b></td>
							<td><b> <%=customer.getAdharNo()%>
							</b></td>
						</tr>
						
							<tr>
							<td><b>Balnce</b></td>
							<td><b> <%=customer.getAmount()%>
							</b></td>
						</tr>

					</table>
					<br> <br>
					<center>
						
							<span class="one"><form action="checkToId">
							<p class="stats z-depth-4">
									To account Id<input type="text" name="toId"> <input type="submit"
										value="submit">
										</p>
							</form>
						
						<br>
							<span class="five">
								<form action="transactionpage">
									<p class="stats z-depth-4">
									<input type="submit" value="credit" name="trans"></p> <br>
									 <p class="stats z-depth-4">
									 <input type="submit" value="debit" name="trans"> </p><br>
									  <p class="stats z-depth-4">
									  <input	type="submit" value="transactiondetails" name="trans">
								</p>
								</form>
						</p>
					</center>
				</div>
			</div>
			<div class="col-lg-5">
				<img class="messi" src="view/image/1200px-User_icon-cp.svg.png">
				
			</div>
		</div>
	</div>


</body>
</html>