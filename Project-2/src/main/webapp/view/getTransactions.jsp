<%@page import="java.util.ArrayList"%>
<%@page import="com.example.demo.Transactions"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table, th, td {
	border: 1px solid;
}

td {
	padding: 5px 30px;
	background-color: activecaption;
}

th {
	background-color: green;
	padding: 0 15px;
}
</style>
<body>

	<table>
		<tr>
			<th>TransactionId</th>
			<th>Transaction From</th>
			<th>Transaction To</th>
			<th>Transaction To Id amount</th>
			<th>Transaction From Id amount</th>
			<th>Date</th>

		</tr>
		<%
		List<Transactions> transactions = new ArrayList<Transactions>();
		transactions = (List<Transactions>) request.getAttribute("transactionList");
		for (Transactions t : transactions) {
		%>
		<tr>
			<td><%=t.getTransactionId()%></td>
			<td><%=t.getFromTrasactionId()%></td>
			<td><%=t.getToTransactionId()%></td>
			<td><%=t.getToIdAmmount()%></td>
			<td><%=t.getToIdAmmount()%></td>
			<td><%=t.getDate()%></td>

			<%}%>
		</tr>
	</table>
</body>
</html>