<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ include file="base.jsp"%>
</head>
<body>



	<div class="container mt-3">

		<div class="row">

			<div class="col-md-6 offset-md-3">

				<div class="card">

					<div class="card-body">

						<h1 class="text-center mb-3">
							<u>Edit product</u>
						</h1>


						
							<form  action="${pageContext.request.contextPath}/handle-product" method="post">
							<input type="hidden" name="id" value="${p.id}" id="id" >
								<div class="form-group">
									<label for="name">Product Name.</label> <input type="text"
										name="name" value="${p.name}" class="form-control" id="name"
										placeholder="Enter  Name..">
								</div>

								<div class="form-group">

									<label for="description">Product Description.</label>

									<textarea name="description" id="description"
										class="form-control" placeholer="Enter Description.." rows=""
										cols="">${p.description }</textarea>

								</div>

								<div class="form-group">
									<label for="price">Product Price.</label> <input type="text"
										name="price" value="${p.price}" class="form-control" id="price"
										placeholder="Enter  Price..">
								</div>

								<div class="container text-center">

									<a href="${pageContext.request.contextPath}"
										class="btn btn-outline-danger">Back</a>

									<button type="submit" class="btn btn-primary">Edit</button>

								</div>
							</form>

					</div>

				</div>


			</div>

		</div>

	</div>


</body>
</html>