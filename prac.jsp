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
 
	String ans = request.getParameter("answer");
	
	
	try{
		
 		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/answers", "root", "Murali@123...");
		PreparedStatement ps = con.prepareStatement("select * from ans1 where ans=?");
		ps.setString(1,ans);
		
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()){
			response.sendRedirect("correct.html");
			
		}
		else
		{
			System.out.print("no");
			
			
		}
			con.close();
	}
	catch(Exception e){
	out.print(e);
	}
	%>
</body>
</html>