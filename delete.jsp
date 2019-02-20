<%@page import="com.cognizant.dao.EmployeeDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>DELETE PAGE</title>
</head>
<body>
       <%
       try{
       EmployeeDAO emp = new EmployeeDAO();
       int status = 0;
       status = emp.delete(Integer.parseInt(request.getParameter("Eid")));
       if(status == 0) out.println("Error while deleting");
       else response.sendRedirect("read.jsp");
       }catch(Exception e) {
       	out.println(e.getMessage());
       } 	
		%>

</body>
</html>