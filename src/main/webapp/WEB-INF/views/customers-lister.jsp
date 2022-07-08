<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Customer Relationship management Portal</title>
</head>

<body>

	<div class="container">

		<h3 style="background-color:green; padding:20px;">Customer Relationship management Portal</h3>
		<hr>

		<!-- Add a search form -->

		<form action="/CustomerRelationshipManagementApp/customers/search" class="form-inline">

			<!-- Add a button -->
			<a href="/CustomerRelationshipManagementApp/customer/begin-add"
				class="btn btn-info btn-sm"> Add Customer </a> 
			
		</form>

		<table class="table table-bordered table-striped" >
			<thead style="background-color:green;">
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Email</th>
					<th>Action</th>
					
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${customers}" var="tempcustomer">
					<tr>
						<td><c:out value="${tempcustomer.firstName}" /></td>
						<td><c:out value="${tempcustomer.lastName}" /></td>
						<td><c:out value="${tempcustomer.email}" /></td>
						<td>
							<!-- Add "update" button/link --> 
							
							<a
							href="/CustomerRelationshipManagementApp/customer/begin-update?customerId=${tempcustomer.id}"
							class="btn btn-info btn-sm"> Update 
							</a> 
							
							<a href="/CustomerRelationshipManagementApp/customer/delete?customerId=${tempcustomer.id}"
							class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete?'))) return false">
								Delete 
							</a>
						</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>



