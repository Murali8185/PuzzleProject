<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
 
	String username = request.getParameter("uname");
	String password = request.getParameter("pass");
	
	try{
		
 		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/answers", "root", "Murali@123...");
		PreparedStatement ps = con.prepareStatement("select * from regi where username=? and password=?");
		ps.setString(1,username);
		ps.setString(2,password);
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()){
			response.sendRedirect("puzzle.html");
		}
		else
		{
			response.sendRedirect("RegistrationForm.jsp");
			
			
		}
			con.close();
	}
	catch(Exception e){
	out.print(e);
	}
	%>
</body>
</html>