<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>


 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet" type="text/css"/>
  <script src="bootstrap-3.3.7-dist/js/jquery.min.js"></script>
  <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>

<body style="background-color:yellow; text-align:center;">

<div class="container">
 
 
 <%@page import="com.javatpoint.Dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>

<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>
 
 
  <table class="table table-hover">
 
    <thead>
      <tbody>
      <c:forEach items="${list}" var="u">
	 <tr class="info">
        <td>${u.getId()}</td><td>${u.getName()}</td> <td>${u.getPassword()}</td> <td>${u.getEmail()}</td> <td>${u.getSex()}</td> <td>${u.getCountry()}</td>
        <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
	<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
	</tr>
</c:forEach>
    </thead>
    </tbody>
    
  </table>
  <br/><a href="adduserform.jsp">Add New User</a>
</div>


</body>
</html>