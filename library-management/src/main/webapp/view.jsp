<!DOCTYPE html>

<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>

</head>
<body>

<%@ page import="com.demo.StudentRegistration,com.demo.GetSet,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h1 value="#563d7c" color="red">Student List</h1>
<%
List<GetSet> li=StudentRegistration.select();
request.setAttribute("l",li);
%>
<table border="5" width="90%" class="table table-success table-striped">
	<tr>
	    <th>RegNo</th>
		<th>Name</th>
		<th>Email</th>
		<th>Address</th>
		<th>city</th>
		<th>State</th>
		<th>Zipcode</th>
		<th>Edit </th>
		<th>Delete </th>
	</tr>
	
<c:forEach items="${l}" var="b">
	<tr>
	    <td>${b.getRegno()}</td>
		<td>${b.getName()}</td>
		<td>${b.getEmail()}</td>
		<td>${b.getAddress()}</td>
		<td>${b.getCity()}</td>
		<td>${b.getState()}</td>
		<td>${b.getZipcode()}</td>
		<td><a href="editForm.jsp?id=${b.getRegno()}">Edit</a></td>
     	<td><a href="delete.jsp?id=${b.getRegno()}">Delete</a></td>
		
		
	</tr>
</c:forEach>
</table>

</body>
</html>
