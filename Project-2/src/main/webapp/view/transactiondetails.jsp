<%@page import="java.util.ArrayList"%>
<%@page import="com.example.demo.Transactions"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<table>
		<tr>
			<th>aaa</th>
		</tr>
		<tr>
			
			<%
			List<Transactions> transaction = new ArrayList<Transactions>();
			transaction = (List<Transactions>) request.getAttribute("transactions");
			for (Transactions t : transaction) {
			%>
			<td><%=t.getFromTrasactionId()%></td>
			<%}%>

		</tr>

	</table>

</body>
</html>