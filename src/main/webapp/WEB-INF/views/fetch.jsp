<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<title>Student Records</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">

<style>
/* Gradient title */
h2 {
	background: linear-gradient(to right, #007bff, #6610f2);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	font-weight: bold;
}

/* Table shadow + rounded corners */
.table-container {
	border-radius: 10px;
	overflow: hidden;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
}

/* Hover highlight */
tbody tr:hover {
	background-color: #e8f0ff !important;
}

/* Header color */
thead {
	background-color: #0d6efd;
	color: white;
}

/* Alternate row colors */
tbody tr:nth-child(even) {
	background-color: #f1f5ff;
}

tbody tr:nth-child(odd) {
	background-color: #ffffff;
}
</style>
</head>

<body class="container mt-5">

	<h2 class="text-center mb-4">Student Records</h2>

	<div class="table-container">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="s" items="${list}">
					<tr>
						<td>${s.id}</td>
						<td>${s.name}</td>
						<td>${s.age}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
