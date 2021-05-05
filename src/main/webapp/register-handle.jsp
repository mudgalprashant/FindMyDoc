<%@ page import ="java.sql.*" %>
<%
    String name = request.getParameter("name");    
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String gender = request.getParameter("gender");
    String mobile = request.getParameter("mobile");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "prashant", "project");
    Statement st = con.createStatement();
    Statement st2 = con.createStatement();
    ResultSet rs2;
    rs2 = st2.executeQuery("select * from user where email='" + email + "';");
    if (rs2.next()){
        response.sendRedirect("email-already.jsp");
    } else {
    //ResultSet rs;
    int i = st.executeUpdate("insert into user(name, email, mobile, address, gender, password) values ('" + name + "','" + email + "','" + mobile + "','" + address + "','" + gender + "','"+ password + "');");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("login.jsp");
    }
    }
%>