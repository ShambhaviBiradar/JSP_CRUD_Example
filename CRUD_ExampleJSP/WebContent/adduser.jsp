<%@page import="com.javatpoint.Dao.UserDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="G:\Workspace_Java\CRUD_ExampleJSP\WebContent\WEB-INF\bootstrap-3.3.7-dist\css\bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<body style="background-color:yellow; text-align:center;">


<%
int i=UserDao.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>
</body>

</html>