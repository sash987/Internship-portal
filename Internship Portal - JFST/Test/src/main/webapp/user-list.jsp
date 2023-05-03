<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>CCOEW Internship Portal</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<!-- NAVBAR START -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container">
		    <a class="navbar-brand " href="/index.jsp">
		    
		    <img src="data:image/jpeg;base64,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" alt="" width="50" height="50" class="d-inline-block align-text-top">
		      MKSSS's Cummins College of Engineering for Women ,Pune
		    </a>
		  </div>
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#"></a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNav">
		     <ul class="navbar nav">
		        <li class="nav-item ">
		          <a class="nav-link active " aria-current="page" href="/index.jsp">Home</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="yearwisestats.jsp">Recruitment Statistics</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="recruiters.jsp">Recruiters</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="internshipsts.jsp">About</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="contactus.jsp">Contact Us</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
<!-- NAVBAR END -->
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div-
		 class="container">
			<h3 class="text-center">List of Companies</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New Company</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Year</th>
						<th>Position</th>
						<th>Stipend</th>
						<th>Number of Students selected</th>
						<th>Number of students who received PPO</th>
						<th>Selected Student's Branch</th>
						<th>Duration</th>
						<th>Location</th>
						<th>Branches Eligible</th>
						<th>CTC</th>
						<th>Qualifying CGPA</th>
						<th>Company website link</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.companyid}" /></td>
							<td><c:out value="${user.companyname}" /></td>
							<td><c:out value="${user.year}" /></td>
							<td><c:out value="${user.position}" /></td>
							<td><c:out value="${user.stipend}" /></td>
							<td><c:out value="${user.students_selected}" /></td>
							<td><c:out value="${user.ppo}" /></td>
							<td><c:out value="${user.branch}" /></td>
							<td><c:out value="${user.duration}" /></td>
							<td><c:out value="${user.location}" /></td>
							<td><c:out value="${user.branches_eligible}" /></td>
							<td><c:out value="${user.ctc}" /></td>
							<td><c:out value="${user.cgpa}" /></td>
							<td><c:out value="${user.link}" /></td>
							<td><a href="edit?companyid=<c:out value="${user.companyid}" />">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="delete?companyid=<c:out value="${user.companyid}" />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>