<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
if (session.getAttribute("name") == null) {
response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<input type="hidden" id="status"
value="<%=request.getAttribute("status")%>">
<h1> Admin dashboard</h1>
<form method="post" action="UserServlet" class="register-form">
id="register-form">
<a href="logout"> logout</a>
<h2><%=session.getAttribute("name")%></h2>
<label for="fname">Company ID:</label><br>
  <input type="text" id="fname" name="fname"><br>
  <label for="fname">Company Name:</label><br>
  <input type="text" id="fname" name="fname"><br>
   <label for="fname">Job Descrption:</label><br>
  <input type="text" id="fname" name="fname"><br>
  
  <!-- Create Button for Insert,Update, Delete -->
  
  
</form>

</head>
<body>

</body>
</html>