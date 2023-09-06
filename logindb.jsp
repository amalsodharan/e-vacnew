<%-- 
    Document   : logindb
    Created on : 19 Aug, 2023, 8:04:22 AM
    Author     : Megha
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            
            String s="select * from login where user='"+user+"' and pass='"+pass+"'";
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evac","root","");
            Statement stm=con.createStatement();
            ResultSet rs=stm.executeQuery(s);
        
        
            if(rs.next())
            {
                response.sendRedirect("succes.html");
            }
            else
            {
                response.sendRedirect("login.html");
            }
        %>
    </body>
</html>
