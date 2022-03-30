<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>credit</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container-fluid">
		<h2>Deposit Form </h2>
		<form action="debit">
			<!-- <div class="form-group">
				<label for="email">Transaction Id :</label> <input type="text"
					class="form-control" id="email" placeholder="Admin Id"
					name="transactionId">
			</div> -->
			<div class="form-group">
				<label for="amount">Amount:</label> <input type="text"
					class="form-control" id="pwd" placeholder="Enter amount"
					name="debiAmmount">
			</div>
			<div class="form-group">
				<label for="date">Date:</label> <input type="date"
					class="form-control" id="date" 
					name="date">
			</div>
			
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>