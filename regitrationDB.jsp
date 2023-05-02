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
	String email = request.getParameter("email");
	String password = request.getParameter("pass");
	String cpassword = request.getParameter("cpass");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/answers", "root", "Murali@123...");
		PreparedStatement ps = con.prepareStatement("insert into regi values(?,?,?,?)");
		ps.setString(1,username);
		ps.setString(2,email);
		ps.setString(3,password);
		ps.setString(4,cpassword);
		
		int i = ps.executeUpdate();
		
		response.sendRedirect("LoginPage.jsp");
		
		con.close();
	}
	catch(Exception e){
	out.print(e);
	}
	%>
</body>
</html>