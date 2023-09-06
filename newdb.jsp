<%-- 
    Document   : newdb
    Created on : 19 Aug, 2023, 8:30:17 AM
    Author     : Megha
--%>

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
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            String age=request.getParameter("age");
            String mobile=request.getParameter("mobile");
            
            String s="insert into login values(slno,'"+fname+"','"+lname+"','"+user+"','"+pass+"','"+age+"','"+mobile+"')";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/evac","root","");
            Statement stm=con.createStatement();
            int i=stm.executeUpdate(s);
            if(i>0)
            {
                response.sendRedirect("login.html");
            }
            else
            {
                response.sendRedirect("new.html");
            }
        %>
    </body>
</html>
