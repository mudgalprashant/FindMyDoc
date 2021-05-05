<%@ page import ="java.sql.*" %>
<%
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "prashant", "project");
   
    response.sendRedirect("show-doctor.jsp");
%>
