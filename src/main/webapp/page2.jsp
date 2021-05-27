<%-- 
    Document   : newjsppage2
    Created on : May 27, 2021, 8:06:48 PM
    Author     : George.Pasparakis
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<% 
    String username2 = request.getParameter("username");
    
    // the below line works only with rd.forward()
    String secretKey = (String)request.getParameter("secret-key"); 
    
    // request.getAttribute() DOESN'T WORK ON sendRedirect
    
    out.println("Welcome " + username2 + ", your secret key is: " + secretKey);
%>
