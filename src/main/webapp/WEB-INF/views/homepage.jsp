<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file="base.jsp"%>
</head>
<body>



	<div class="container mt-3">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to product App</h1>

				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No.</th>
							<th scope="col">Name</th>
							<th scope="col">Desc</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="p" items="${product}">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.name}</td>
								<td>${p.description}</td>
								<td class="font-weight-bold">&#8377;${p.price}</td>
								<td><a href="delete/${p.id}"><i
										class="fas fa-trash-alt alert-danger ml-2"></i></a> <a
									href="edit/${p.id }"><i class="fas fa-marker ml-1"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<hr>

				<div class="container text-center">

					<a href="addproduct" class="btn btn-outline-success">Add
						Product</a>
				</div>
			</div>

		</div>

	</div>
</body>
</html>