<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>



</head>
<body>
<%@ page import="com.demo.StudentRegistration,com.demo.GetSet" %>

<%
String id=request.getParameter("id");
GetSet gt = StudentRegistration.getBookById(Integer.parseInt(id));
%>
<div>
<div class="card">
  <div class="card-body">
    <h1>Student Registration Form</h1>
  </div>
</div>

</div>

<form action="update.jsp" method="post">
  <div class="row g-3 align-items-center mt-5 m-5">
  <div class="col-auto">
    <label class="col-form-label">Student RegNo :</label>
  </div>
  <div class="col-auto">
    <input type="number" class="form-control" name="regno" value="<%= gt.getRegno()%>">
  </div>
</div>

  <div class="row g-3 align-items-center mt-5 m-5">
  <div class="col-auto">
    <label class="col-form-label">Student Name :</label>
  </div>
  <div class="col-auto">
    <input type="text" class="form-control" name="name" value="
    <%= gt.getName() %>">
  </div>
</div>

<div class="row g-3 align-items-center mt-5 m-5">
  <div class="col-auto">
    <label class="col-form-label">Student Email :</label>
  </div>
  <div class="col-auto">
    <input type="text" class="form-control" name="email" value="<%= gt.getEmail() %>">
  </div>
</div>

<div class="row g-3 align-items-center mt-5 m-5">
  <div class="col-auto">
    <label class="col-form-label">Student Address:</label>
  </div>
  <div class="col-auto">
    <input type="text" class="form-control" name="address" value="<%= gt. getAddress()%>">
  </div>
</div>


<div class="row g-3 align-items-center mt-5 m-5">
  <div class="col-auto">
    <label class="col-form-label">Student City:</label>
  </div>
  <div class="col-auto">
    <input type="text" class="form-control" name="city" value="<%= gt.getCity()%>">
  </div>
</div>


<div class="row g-3 align-items-center mt-5 m-5">
  <div class="col-auto">
    <label class="col-form-label">Student State:</label>
  </div>
  <div class="col-auto">
    <input type="text" class="form-control" name="state" value="<%= gt.getState()%>">
  </div>
</div>


<div class="row g-3 align-items-center mt-5 m-5">
  <div class="col-auto">
    <label class="col-form-label">Student Zipcode:</label>
  </div>
  <div class="col-auto">
    <input type="number" class="form-control" name="zipcode" value="<%= gt.getZipcode()%>">
  </div>
</div>


  <button type="submit" class="btn btn-primary m-3">Update</button>
</form>

</body>
</html>